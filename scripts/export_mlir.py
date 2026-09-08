#!/usr/bin/env python3
"""
Walk a repository of PyTorch model-definition files, wrap each `Model` in a
FunctionalWrapper (parameters passed as explicit tensor arguments instead of
being frozen as module attributes), and export the resulting parametric
graph to Linalg-on-Tensors MLIR via torch-mlir.

This generalizes the pattern in vgg16_param.py to an arbitrary directory of
files that each follow the repo's standard shape:

    class Model(nn.Module):
        def __init__(self, ...): ...
        def forward(self, x, ...): ...

    def get_inputs():       -> list[Tensor] | Tensor     (positional forward args)
    def get_init_inputs():  -> list[Any]    | Any         (positional __init__ args)

Because the wrapper receives weights as plain positional arguments (never
registered as submodule attributes), torch.export sees them as ordinary
USER_INPUTs rather than InputKind.PARAMETER, so torch-mlir's FX importer
does NOT freeze/inline them -- they show up as block arguments of the
emitted func.func, i.e. the compiled function stays parametric over the
weights.

Usage:
    python export_mlir.py --repo-dir ./models --out-dir ./mlir_out
    python export_mlir.py --repo-dir . --out-dir ./out --pattern "*_VGG*.py" --verbose

Output layout mirrors the input tree under --out-dir:
    <out-dir>/<same relative path>/<stem>.mlir
    <out-dir>/<same relative path>/<stem>.params.txt   (arg order/shape manifest)
    <out-dir>/export_report.txt                        (overall pass/fail summary)
"""

from __future__ import annotations

import argparse
import gc
import importlib.util
import signal
import subprocess
import sys
import traceback
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Optional

import torch
import torch.nn as nn
from torch.func import functional_call

from torch_mlir import fx

THIS_FILE = Path(__file__).resolve()


# --------------------------------------------------------------------------
# Decomposition table
#
# torch-mlir's default table (get_decomposition_table) only lists a fixed set
# of ops. Under PyTorch's current `run_decompositions(table)` semantics, any op
# *absent* from the table is preserved -- including CompositeImplicitAutograd
# ops like `aten.lstm.input` / `aten.gru.input`, which the Torch->Linalg
# pipeline then chokes on:
#
#   error: failed to legalize operation 'torch.operator' that was explicitly
#   marked illegal: ... name = "torch.aten.lstm.input"
#
# PyTorch does ship decompositions for the whole RNN family, so we just splice
# them into torch-mlir's table. This is what makes every nn.RNN / nn.LSTM /
# nn.GRU model in the repo exportable.
# --------------------------------------------------------------------------
RNN_OP_NAMES = ("lstm", "gru", "rnn_tanh", "rnn_relu")

_DECOMPOSITION_TABLE = None


def build_decomposition_table() -> dict:
    global _DECOMPOSITION_TABLE
    if _DECOMPOSITION_TABLE is not None:
        return _DECOMPOSITION_TABLE

    from torch._decomp import get_decompositions
    from torch_mlir.extras.fx_decomp_util import get_decomposition_table

    table = dict(get_decomposition_table())

    extra_ops = [
        op for op in (getattr(torch.ops.aten, n, None) for n in RNN_OP_NAMES) if op is not None
    ]
    if extra_ops:
        try:
            table.update(get_decompositions(extra_ops))
        except Exception:
            # A torch build without these decompositions just means the RNN
            # models stay unexportable; everything else still works.
            pass

    _DECOMPOSITION_TABLE = table
    return table


# --------------------------------------------------------------------------
# Multi-operand einsum shim
#
# torch.export keeps `aten.einsum.default` as a single node. torch-mlir then
# decomposes it internally, and for >2 operands that decomposition emits an
# `aten.sum.dim_IntList` whose result type never gets refined:
#
#   error: failed to legalize operation 'torch.aten.sum.dim_IntList' ...
#   (!torch.vtensor<[2048,2,8,64,64,64],f32>, ...) -> !torch.vtensor<*,f32>
#
# Two-operand einsums lower fine, so we rewrite an n-operand contraction into a
# chain of pairwise ones before export. Greedy smallest-intermediate ordering
# also keeps the tensors sane -- the naive left-to-right order for the Mamba2
# models materializes a rank-6 [2048,2,8,64,64,64] intermediate (34 GB in f32).
# --------------------------------------------------------------------------
_ORIG_EINSUM = torch.einsum


def _split_equation(equation: str):
    equation = equation.replace(" ", "")
    if "->" not in equation:
        return None
    lhs, rhs = equation.split("->", 1)
    return lhs.split(","), rhs


def _contract_pair(t_a: str, t_b: str, others: list[str], output: str) -> str:
    """Subscript of a@b: every shared/unique index still needed downstream."""
    keep = set(output)
    for term in others:
        keep |= set(term)
    result, seen = [], set()
    for ch in t_a + t_b:
        if ch in keep and ch not in seen:
            seen.add(ch)
            result.append(ch)
    return "".join(result)


def pairwise_einsum(equation, *operands):
    """torch.einsum, but n-ary contractions are folded two operands at a time."""
    if not isinstance(equation, str) or len(operands) <= 2:
        return _ORIG_EINSUM(equation, *operands)
    if "..." in equation or not all(isinstance(o, torch.Tensor) for o in operands):
        return _ORIG_EINSUM(equation, *operands)

    parsed = _split_equation(equation)
    if parsed is None or len(parsed[0]) != len(operands):
        return _ORIG_EINSUM(equation, *operands)
    terms, output = parsed

    sizes: dict[str, int] = {}
    for term, op in zip(terms, operands):
        if len(term) != op.dim():
            return _ORIG_EINSUM(equation, *operands)
        for ch, dim in zip(term, op.shape):
            if sizes.setdefault(ch, dim) != dim and dim != 1:
                return _ORIG_EINSUM(equation, *operands)

    def numel(term: str) -> int:
        total = 1
        for ch in set(term):
            total *= sizes.get(ch, 1)
        return total

    terms = list(terms)
    ops = list(operands)
    while len(terms) > 2:
        best = None
        for i in range(len(terms)):
            for j in range(i + 1, len(terms)):
                others = [t for k, t in enumerate(terms) if k not in (i, j)]
                out_term = _contract_pair(terms[i], terms[j], others, output)
                cost = numel(out_term)
                if best is None or cost < best[0]:
                    best = (cost, i, j, out_term)
        _, i, j, out_term = best
        merged = _ORIG_EINSUM(f"{terms[i]},{terms[j]}->{out_term}", ops[i], ops[j])
        for k in (j, i):
            del terms[k]
            del ops[k]
        terms.append(out_term)
        ops.append(merged)

    if len(terms) == 1:
        return _ORIG_EINSUM(f"{terms[0]}->{output}", ops[0])
    return _ORIG_EINSUM(f"{terms[0]},{terms[1]}->{output}", ops[0], ops[1])


class use_pairwise_einsum:
    """Install the shim for the duration of a block (export only, not the
    eager reference forward -- that must stay a true reference)."""

    def __enter__(self):
        torch.einsum = pairwise_einsum
        torch.functional.einsum = pairwise_einsum
        return self

    def __exit__(self, *exc):
        torch.einsum = _ORIG_EINSUM
        torch.functional.einsum = _ORIG_EINSUM
        return False


# --------------------------------------------------------------------------
# Functional wrapper: makes weights ordinary positional inputs
# --------------------------------------------------------------------------
class FunctionalWrapper(nn.Module):
    """
    Wraps a base model so that forward() takes the model's normal input(s)
    followed by every weight/bias as separate, explicit tensor arguments.

    We keep a reference to the original module to dispatch via
    functional_call, but do NOT register it as a submodule (object.__setattr__
    bypasses nn.Module's attribute magic), so its real parameters are never
    traced as constants by the exporter.
    """

    def __init__(self, base_model: nn.Module, param_names: list[str], num_inputs: int):
        super().__init__()
        object.__setattr__(self, "_base_model", base_model)
        self.param_names = list(param_names)
        self.num_inputs = num_inputs

    def forward(self, *args):
        inputs = args[: self.num_inputs]
        params = args[self.num_inputs :]
        params_dict = dict(zip(self.param_names, params))
        return functional_call(self._base_model, params_dict, tuple(inputs))


# --------------------------------------------------------------------------
# Model state helpers
# --------------------------------------------------------------------------
def promote_tensor_attrs_to_buffers(model: nn.Module) -> list[str]:
    """
    Turn plain `self.foo = torch.randn(...)` module attributes into registered
    buffers, recursively.

    torch.export lifts such attributes into anonymous constants; if forward()
    then mutates one (e.g. `self.hidden.copy_(h0)` in the VanillaRNN model)
    export dies with

        RuntimeError: Constant lifted_tensor_0 is mutated in the forward
        method. Pls register it as buffer

    Registering them is exactly the remedy PyTorch asks for, and it also lets
    us feed them in as explicit arguments so the exported function stays
    parametric over them too.
    """
    promoted: list[str] = []
    for prefix, sub in model.named_modules():
        for attr, value in list(sub.__dict__.items()):
            if attr.startswith("__") or not isinstance(value, torch.Tensor):
                continue
            del sub.__dict__[attr]
            try:
                sub.register_buffer(attr, value.detach().clone())
            except (KeyError, AttributeError, TypeError):
                # e.g. the name collides with a class-level attribute; leave it
                # as a plain attribute rather than breaking the module.
                sub.__dict__[attr] = value
                continue
            promoted.append(f"{prefix}.{attr}" if prefix else attr)
    return promoted


def snapshot_mutable_state(model: nn.Module):
    """
    Clone every buffer and plain-tensor attribute so a forward pass that
    mutates module state (again: VanillaRNN reassigns `self.hidden`) can't
    poison the *next* forward pass we run for comparison.

    Parameters are deliberately not snapshotted -- nothing in eval() mode
    should be touching them, and they are the big allocations.
    """
    restores = []
    for sub in model.modules():
        for attr, value in list(sub.__dict__.items()):
            if isinstance(value, torch.Tensor):
                restores.append((sub.__dict__, attr, value.detach().clone()))
        for name, value in list(sub._buffers.items()):
            if isinstance(value, torch.Tensor):
                restores.append((sub._buffers, name, value.detach().clone()))
    return restores


def restore_mutable_state(restores) -> None:
    for container, key, value in restores:
        container[key] = value


# --------------------------------------------------------------------------
# Helpers
# --------------------------------------------------------------------------
@dataclass
class ExportResult:
    path: Path
    ok: bool
    message: str = ""
    mlir_path: Optional[Path] = None
    notes: list[str] = field(default_factory=list)


def load_module_from_path(path: Path, unique_name: str):
    spec = importlib.util.spec_from_file_location(unique_name, path)
    if spec is None or spec.loader is None:
        raise ImportError(f"could not create import spec for {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[unique_name] = module
    spec.loader.exec_module(module)
    return module


def find_model_files(repo_dir: Path, pattern: str):
    yield from sorted(repo_dir.rglob(pattern))


def sanitize_func_name(stem: str) -> str:
    name = "".join(c if (c.isalnum() or c == "_") else "_" for c in stem)
    if name and name[0].isdigit():
        name = f"m_{name}"
    return name or "model"


def as_list(x: Any) -> list:
    return list(x) if isinstance(x, (list, tuple)) else [x]


def tensors_close(a: torch.Tensor, b: torch.Tensor, atol: float, rtol: float) -> bool:
    """
    Elementwise allclose, falling back to a magnitude-relative check.

    Several models here (e.g. the Mamba2 SSD ones) produce values around 1e22,
    where a different-but-mathematically-equivalent summation order legitimately
    moves individual elements by thousands of ULPs. Elementwise rtol judges each
    element against *its own* magnitude, so a near-zero element sitting next to a
    1e22 element fails even though the result is numerically identical to the
    precision float32 can carry. Comparing the max deviation against the max
    magnitude of the tensor is the meaningful test at that dynamic range.
    """
    if a.shape != b.shape:
        return False
    if torch.allclose(a, b, atol=atol, rtol=rtol, equal_nan=True):
        return True
    if not a.is_floating_point() and not a.is_complex():
        return False

    a_flat = a.detach().reshape(-1)
    b_flat = b.detach().reshape(-1)
    a_finite = torch.isfinite(a_flat)
    if not torch.equal(a_finite, torch.isfinite(b_flat)):
        # inf/NaN appeared in different places -> genuinely different results.
        return False
    if not bool(a_finite.any()):
        return True

    zero = torch.zeros((), dtype=a_flat.dtype)
    diff = torch.where(a_finite, (a_flat - b_flat).abs(), zero).max()
    scale = torch.where(a_finite, b_flat.abs(), zero).max()
    return bool(diff <= atol + rtol * scale)


def outputs_close(a: Any, b: Any, atol=1e-4, rtol=1e-4) -> bool:
    """Loose comparator that handles tensors, tuples/lists, and dicts."""
    if isinstance(a, torch.Tensor) and isinstance(b, torch.Tensor):
        return tensors_close(a, b, atol, rtol)
    if isinstance(a, (list, tuple)) and isinstance(b, (list, tuple)):
        return len(a) == len(b) and all(
            outputs_close(x, y, atol, rtol) for x, y in zip(a, b)
        )
    if isinstance(a, dict) and isinstance(b, dict):
        return a.keys() == b.keys() and all(
            outputs_close(a[k], b[k], atol, rtol) for k in a
        )
    return a == b


# Substrings that mean "torch.export tripped over mutated module state" -- the
# one failure class that retrying with buffers promoted actually fixes.
MUTATED_STATE_HINTS = (
    "Pls register it as buffer",
    "is mutated in the forward method",
    "must be registered as buffers",
    "were assigned during export",
)


def looks_like_mutated_state(message: str) -> bool:
    return any(hint in message for hint in MUTATED_STATE_HINTS)


# --------------------------------------------------------------------------
# Core export logic for a single file
# --------------------------------------------------------------------------
def attempt_export(
    module,
    path: Path,
    seed: int,
    verbose: bool,
    promote_state: bool,
    skip_verify: bool,
    strict_verify: bool,
):
    """
    One end-to-end attempt for a single already-imported model file.

    Returns (mlir_text_or_None, manifest_lines, error_message, notes).
    """
    notes: list[str] = []

    # 1. Build the model + inputs, sanity check plain forward
    try:
        torch.manual_seed(seed)
        init_args = as_list(module.get_init_inputs())
        model = module.Model(*init_args)
        model.eval()

        inputs = as_list(module.get_inputs())

        state_names = [name for name, _ in model.named_parameters()]
        num_params = len(state_names)

        if promote_state:
            promoted = promote_tensor_attrs_to_buffers(model)
            buffer_names = [name for name, _ in model.named_buffers()]
            state_names += buffer_names
            notes.append(
                "promoted module state to explicit args: "
                + (", ".join(promoted) if promoted else "(none)")
                + f"; buffers as args: {len(buffer_names)}"
            )

        state_dict = dict(model.named_parameters())
        param_name_set = set(state_dict)
        state_dict.update(dict(model.named_buffers()))
        # Buffers are cloned: a forward pass may write through them in place
        # (VanillaRNN's `self.hidden.copy_(...)`), and the verification pass
        # must not scribble on the tensors we later hand to the exporter.
        state_values = tuple(
            state_dict[name].detach()
            if name in param_name_set
            else state_dict[name].detach().clone()
            for name in state_names
        )
    except Exception as e:
        tb = traceback.format_exc() if verbose else str(e)
        return None, [], f"model construction/forward failed: {tb}", notes

    # 2. Verify the functional wrapper reproduces the plain model.
    #
    # Both forwards are re-seeded because several models draw randomness inside
    # forward() (35_LSTM synthesises h0/c0 with torch.randn when not supplied);
    # without a reset the two passes would differ for reasons that have nothing
    # to do with the wrapper.
    wrapper = FunctionalWrapper(model, state_names, num_inputs=len(inputs))
    wrapper.eval()

    if not skip_verify:
        try:
            saved_state = snapshot_mutable_state(model)

            torch.manual_seed(seed)
            with torch.no_grad():
                want = model(*inputs)
            restore_mutable_state(saved_state)

            torch.manual_seed(seed)
            with torch.no_grad():
                got = wrapper(*inputs, *state_values)
            restore_mutable_state(saved_state)

            matched = outputs_close(want, got)
        except Exception as e:
            tb = traceback.format_exc() if verbose else str(e)
            return None, [], f"functional wrapper forward failed: {tb}", notes
        finally:
            # Free the reference activations before torch-mlir starts tracing.
            # For wide convolutional models these are gigabytes (17_SqueezeNet-
            # FireModule holds two 128x128x256x256 tensors) and holding them
            # through export is what got that file OOM-killed.
            want = got = saved_state = None
            gc.collect()

        if not matched:
            msg = "functional wrapper output mismatch vs. original model"
            if strict_verify:
                return None, [], msg, notes
            notes.append(f"WARNING: {msg} (exported anyway; use --strict-verify to fail)")

    # 3. Export to Torch-MLIR / Linalg-on-Tensors (parametric over weights)
    func_name = sanitize_func_name(path.stem)
    try:
        with use_pairwise_einsum():
            linalg_module = fx.export_and_import(
                wrapper,
                *inputs,
                *state_values,
                func_name=func_name,
                output_type=fx.OutputType.LINALG_ON_TENSORS,
                decomposition_table=build_decomposition_table(),
            )
        mlir_text = str(linalg_module)
    except Exception as e:
        tb = traceback.format_exc() if verbose else str(e)
        return None, [], f"torch-mlir export failed: {tb}", notes

    # 4. Argument manifest
    manifest = [f"func_name: {func_name}"]
    for i, tensor in enumerate(inputs):
        shape = tuple(tensor.shape) if isinstance(tensor, torch.Tensor) else "?"
        manifest.append(f"arg{i}: <model input {i}>  shape={shape}")
    for i, name in enumerate(state_names):
        kind = "param" if i < num_params else "buffer"
        manifest.append(
            f"arg{i + len(inputs)}: {name}  shape={tuple(state_dict[name].shape)}  kind={kind}"
        )

    return mlir_text, manifest, "", notes


def export_one(
    path: Path,
    repo_dir: Path,
    out_dir: Path,
    seed: int,
    verbose: bool,
    skip_verify: bool = False,
    strict_verify: bool = False,
) -> ExportResult:
    rel = path.relative_to(repo_dir)
    unique_mod_name = "repo_model__" + "_".join(rel.with_suffix("").parts)

    # 1. Import the file as a module
    try:
        module = load_module_from_path(path, unique_mod_name)
    except Exception as e:
        return ExportResult(path, False, f"import failed: {e}")

    if not hasattr(module, "Model"):
        return ExportResult(path, False, "no `Model` class found, skipping")
    if not hasattr(module, "get_inputs") or not hasattr(module, "get_init_inputs"):
        return ExportResult(
            path, False, "missing get_inputs()/get_init_inputs(), skipping"
        )

    # 2. Export, retrying once with module state promoted to explicit arguments
    #    if the first attempt died on mutated state. The model is rebuilt from
    #    scratch for the retry, so a half-mutated module can't leak across.
    mlir_text, manifest, error, notes = attempt_export(
        module, path, seed, verbose, False, skip_verify, strict_verify
    )
    if mlir_text is None and looks_like_mutated_state(error):
        gc.collect()
        retry_note = "first attempt hit mutated module state; retried with buffers promoted"
        mlir_text, manifest, error, notes = attempt_export(
            module, path, seed, verbose, True, skip_verify, strict_verify
        )
        notes.insert(0, retry_note)

    if mlir_text is None:
        return ExportResult(path, False, error, notes=notes)

    # 3. Write outputs
    out_subdir = out_dir / rel.parent
    out_subdir.mkdir(parents=True, exist_ok=True)

    mlir_path = out_subdir / f"{path.stem}.mlir"
    with open(mlir_path, "w") as f:
        f.write(mlir_text)

    manifest_path = out_subdir / f"{path.stem}.params.txt"
    with open(manifest_path, "w") as f:
        for line in manifest:
            f.write(line + "\n")
        for note in notes:
            f.write(f"# {note}\n")

    return ExportResult(path, True, "ok", mlir_path, notes=notes)


RESULT_OK_PREFIX = "RESULT_OK "
RESULT_FAIL_PREFIX = "RESULT_FAIL "
RESULT_NOTE_PREFIX = "RESULT_NOTE "


def _encode(message: str) -> str:
    """Flatten a possibly-multiline message onto a single result line."""
    return message.replace("\\", "\\\\").replace("\n", "\\n")


def _decode(message: str) -> str:
    out, i = [], 0
    while i < len(message):
        if message[i] == "\\" and i + 1 < len(message):
            nxt = message[i + 1]
            if nxt == "n":
                out.append("\n")
                i += 2
                continue
            if nxt == "\\":
                out.append("\\")
                i += 2
                continue
        out.append(message[i])
        i += 1
    return "".join(out)


# --------------------------------------------------------------------------
# Child mode: process exactly one file in *this* process, then exit.
#
# Running each model export as its own short-lived process is what makes
# the whole run resilient to memory growth (torch-mlir compilation state,
# cached sys.modules entries, allocator fragmentation, etc. never has a
# chance to accumulate across files) and to a single huge model getting
# OOM-killed -- the driver just sees that one subprocess die and moves on.
# --------------------------------------------------------------------------
def run_child(
    path: Path,
    repo_dir: Path,
    out_dir: Path,
    seed: int,
    verbose: bool,
    skip_verify: bool,
    strict_verify: bool,
) -> int:
    result = export_one(
        path, repo_dir, out_dir, seed, verbose, skip_verify, strict_verify
    )
    for note in result.notes:
        print(f"{RESULT_NOTE_PREFIX}{_encode(note)}")
    if result.ok:
        print(f"{RESULT_OK_PREFIX}{result.mlir_path}")
        return 0
    else:
        print(f"{RESULT_FAIL_PREFIX}{_encode(result.message)}")
        return 1


# --------------------------------------------------------------------------
# Driver mode: walk the repo, spawn one child subprocess per file, collect
# results without ever holding more than one model's memory at a time.
# --------------------------------------------------------------------------
def run_driver(args) -> None:
    repo_dir: Path = args.repo_dir.resolve()
    out_dir: Path = args.out_dir.resolve()
    out_dir.mkdir(parents=True, exist_ok=True)

    files = list(find_model_files(repo_dir, args.pattern))
    if not files:
        print(f"No files matching {args.pattern!r} found under {repo_dir}")
        return

    results: list[ExportResult] = []
    for path in files:
        rel = path.relative_to(repo_dir)
        expected_mlir = out_dir / rel.parent / f"{path.stem}.mlir"

        if args.skip_existing and expected_mlir.exists():
            print(f"[{rel}] already exported, skipping (--skip-existing)")
            results.append(
                ExportResult(path, True, "skipped (already exists)", expected_mlir)
            )
            continue

        print(f"[{rel}] exporting (subprocess)...", flush=True)
        cmd = [
            sys.executable,
            str(THIS_FILE),
            "--repo-dir",
            str(repo_dir),
            "--out-dir",
            str(out_dir),
            "--seed",
            str(args.seed),
            "--single-file",
            str(path),
        ]
        if args.verbose:
            cmd.append("--verbose")
        if args.skip_verify:
            cmd.append("--skip-verify")
        if args.strict_verify:
            cmd.append("--strict-verify")

        try:
            proc = subprocess.run(
                cmd,
                capture_output=True,
                text=True,
                timeout=args.timeout,  # None = no timeout
            )
        except subprocess.TimeoutExpired:
            msg = f"child process timed out after {args.timeout}s"
            results.append(ExportResult(path, False, msg))
            print(f"  FAILED: {msg}")
            if args.stop_on_error:
                break
            continue

        stdout = proc.stdout or ""
        stderr = proc.stderr or ""

        notes = [
            _decode(line[len(RESULT_NOTE_PREFIX) :])
            for line in stdout.splitlines()
            if line.startswith(RESULT_NOTE_PREFIX)
        ]

        if proc.returncode < 0:
            # Negative returncode from subprocess.run means the child was
            # killed by a signal (e.g. -9 == SIGKILL, almost always OOM).
            sig = -proc.returncode
            try:
                sig_name = signal.Signals(sig).name
            except ValueError:
                sig_name = str(sig)
            msg = f"child process killed by signal {sig_name} (likely out-of-memory)"
            results.append(ExportResult(path, False, msg, notes=notes))
            print(f"  FAILED: {msg}")
        elif proc.returncode == 0 and RESULT_OK_PREFIX in stdout:
            mlir_path_str = ""
            for line in reversed(stdout.strip().splitlines()):
                if line.startswith(RESULT_OK_PREFIX):
                    mlir_path_str = line[len(RESULT_OK_PREFIX) :]
                    break
            results.append(
                ExportResult(path, True, "ok", Path(mlir_path_str), notes=notes)
            )
            print(f"  ok -> {mlir_path_str}")
            for note in notes:
                print(f"  note: {note}")
        else:
            fail_msg = None
            for line in reversed(stdout.strip().splitlines()):
                if line.startswith(RESULT_FAIL_PREFIX):
                    fail_msg = _decode(line[len(RESULT_FAIL_PREFIX) :])
                    break
            if fail_msg is None:
                stderr_tail = stderr.strip().splitlines()[-1] if stderr.strip() else ""
                fail_msg = stderr_tail or f"child exited with code {proc.returncode}"
            results.append(ExportResult(path, False, fail_msg, notes=notes))
            print(f"  FAILED: {fail_msg.splitlines()[0] if fail_msg else fail_msg}")
            if args.verbose and stderr:
                print(stderr)

        if not results[-1].ok and args.stop_on_error:
            break

    ok = [r for r in results if r.ok]
    failed = [r for r in results if not r.ok]

    print("\n==================== SUMMARY ====================")
    print(f"Total:  {len(results)}")
    print(f"OK:     {len(ok)}")
    print(f"Failed: {len(failed)}")
    if failed:
        print("\nFailures:")
        for r in failed:
            first = r.message.splitlines()[0] if r.message else ""
            print(f"  {r.path}: {first}")

    report_path = out_dir / "export_report.txt"
    with open(report_path, "w") as f:
        f.write(f"Total: {len(results)}  OK: {len(ok)}  Failed: {len(failed)}\n\n")
        for r in results:
            status = "OK" if r.ok else "FAILED"
            f.write(f"[{status}] {r.path}\n")
            if r.ok:
                f.write(f"    -> {r.mlir_path}\n")
            else:
                for line in r.message.splitlines() or [""]:
                    f.write(f"    {line}\n")
            for note in r.notes:
                f.write(f"    # {note}\n")
    print(f"\nWrote report to {report_path}")

    if failed:
        print(
            f"\n{len(failed)} file(s) failed. Fix/skip as needed and re-run with "
            f"--skip-existing to resume without redoing completed work."
        )


# --------------------------------------------------------------------------
# CLI
# --------------------------------------------------------------------------
def main():
    parser = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter
    )
    parser.add_argument(
        "--repo-dir",
        type=Path,
        required=True,
        help="Root directory to walk for model files",
    )
    parser.add_argument(
        "--out-dir",
        type=Path,
        required=True,
        help="Directory to write .mlir/.params.txt files into",
    )
    parser.add_argument(
        "--pattern", default="*.py", help="Glob pattern for model files (default: *.py)"
    )
    parser.add_argument(
        "--seed", type=int, default=0, help="torch.manual_seed value before init/inputs"
    )
    parser.add_argument(
        "--stop-on-error",
        action="store_true",
        help="Abort the whole run on the first failure (default: keep going)",
    )
    parser.add_argument(
        "--skip-existing",
        action="store_true",
        help="Skip files whose .mlir output already exists in --out-dir (use to resume a crashed/killed run)",
    )
    parser.add_argument(
        "--timeout",
        type=float,
        default=None,
        help="Per-file timeout in seconds for the export subprocess (default: no timeout)",
    )
    parser.add_argument(
        "--skip-verify",
        action="store_true",
        help="Skip the eager reference forward passes. Cuts peak memory a lot for "
        "models with huge activations (use if a file keeps getting OOM-killed)",
    )
    parser.add_argument(
        "--strict-verify",
        action="store_true",
        help="Treat a wrapper/model output mismatch as a hard failure instead of "
        "a warning recorded alongside the export",
    )
    parser.add_argument(
        "--verbose", action="store_true", help="Print full tracebacks on failure"
    )
    parser.add_argument(
        "--single-file",
        type=Path,
        default=None,
        help=argparse.SUPPRESS,  # internal: used when the driver re-invokes this script per file
    )
    args = parser.parse_args()

    if args.single_file is not None:
        # Child mode: export exactly one file and exit. This path is what
        # the driver shells out to; it's what gives each file its own
        # process (and thus its own memory space) to live and die in.
        repo_dir = args.repo_dir.resolve()
        out_dir = args.out_dir.resolve()
        rc = run_child(
            args.single_file.resolve(),
            repo_dir,
            out_dir,
            args.seed,
            args.verbose,
            args.skip_verify,
            args.strict_verify,
        )
        sys.exit(rc)
    else:
        run_driver(args)


if __name__ == "__main__":
    main()
