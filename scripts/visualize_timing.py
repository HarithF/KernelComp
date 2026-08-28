#!/usr/bin/env python3
"""
visualizer_time.py

Visualize relative timing performance of different compilation/execution
pipelines ("variants") across one or more model timing reports (JSON files
produced by the benchmarking harness, e.g. 01_MLP_20260828_093140.json).

For each model report, the median runtime of every variant is normalized
against the median runtime of the "mlir_llvm" variant, which always serves
as the reference (value = 1.0). Bars below 1.0 are variants that run FASTER
than mlir_llvm; bars above 1.0 run SLOWER.

Because every model's bars are expressed on the same relative scale
(multiples of that model's own mlir_llvm median), and all models share one
axis, the results are directly comparable model to model.

Usage:
    python visualizer_time.py report1.json report2.json ... [-o output.png]
    python visualizer_time.py reports/*.json -o timing_comparison.png
    python visualizer_time.py report1.json report2.json --show
"""

import argparse
import json
import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np

REFERENCE_VARIANT = "mlir_llvm"


def load_report(path):
    """Load a single timing-report JSON and return (model_name, relative_dict)
    where relative_dict maps variant name -> median_ns / mlir_llvm median_ns."""
    with open(path, "r") as f:
        data = json.load(f)

    model_name = data.get("model_name") or data.get("model_dir") or Path(path).stem
    timing_summary = data.get("timing_summary")
    if not timing_summary:
        raise ValueError(f"{path}: no 'timing_summary' field found")

    if REFERENCE_VARIANT not in timing_summary:
        raise ValueError(
            f"{path}: reference variant '{REFERENCE_VARIANT}' not found in "
            f"timing_summary (found: {list(timing_summary.keys())})"
        )

    ref_median = timing_summary[REFERENCE_VARIANT].get("median_ns")
    if not ref_median:
        raise ValueError(f"{path}: reference variant has zero/invalid median_ns")

    relative = {}
    for variant, stats in timing_summary.items():
        median_ns = stats.get("median_ns")
        if median_ns is None:
            continue
        relative[variant] = median_ns / ref_median

    return model_name, relative


def collect_variants(reports):
    """Stable ordered list of every variant seen across all reports, with the
    reference variant listed first, then alphabetically."""
    seen = []
    for _, relative in reports:
        for variant in relative:
            if variant not in seen:
                seen.append(variant)
    seen.sort(key=lambda v: (v != REFERENCE_VARIANT, v))
    return seen


def plot(reports, output_path=None, show=False):
    variants = collect_variants(reports)
    model_names = [name for name, _ in reports]

    n_models = len(reports)
    n_variants = len(variants)

    fig_width = max(6, n_models * n_variants * 0.8 + 2)
    fig, ax = plt.subplots(figsize=(fig_width, 6))

    group_width = 0.8
    bar_width = group_width / n_variants
    x = np.arange(n_models)

    cmap = plt.get_cmap("tab10")
    colors = {variant: cmap(i % 10) for i, variant in enumerate(variants)}

    for i, variant in enumerate(variants):
        heights = [relative.get(variant, np.nan) for _, relative in reports]
        offset = (i - (n_variants - 1) / 2) * bar_width
        bars = ax.bar(
            x + offset,
            heights,
            width=bar_width * 0.9,
            label=variant,
            color=colors[variant],
            edgecolor="black",
            linewidth=0.5,
        )
        for bar, h in zip(bars, heights):
            if np.isnan(h):
                continue
            ax.annotate(
                f"{h:.2f}",
                xy=(bar.get_x() + bar.get_width() / 2, h),
                xytext=(0, 3),
                textcoords="offset points",
                ha="center",
                va="bottom",
                fontsize=8,
            )

    ax.axhline(1.0, color="gray", linestyle="--", linewidth=1, zorder=0)
    ax.set_xticks(x)
    ax.set_xticklabels(model_names)
    ax.set_ylabel(f"Relative median time (vs. '{REFERENCE_VARIANT}' = 1.0)")
    ax.set_title("Pipeline timing comparison across models")
    ax.legend(title="Variants", bbox_to_anchor=(1.02, 1), loc="upper left")
    ax.grid(axis="y", linestyle=":", alpha=0.5)

    fig.tight_layout()

    if output_path:
        fig.savefig(output_path, dpi=150, bbox_inches="tight")
        print(f"Saved chart to {output_path}")
    if show or not output_path:
        plt.show()


def main():
    parser = argparse.ArgumentParser(
        description="Visualize relative timing of model pipeline variants "
        "(median_ns normalized to the 'mlir_llvm' variant)."
    )
    parser.add_argument(
        "reports", nargs="+", help="Path(s) to model timing report JSON files"
    )
    parser.add_argument(
        "-o",
        "--output",
        default="timing_comparison.png",
        help="Output image path (default: timing_comparison.png)",
    )
    parser.add_argument(
        "--show", action="store_true", help="Also display the plot interactively"
    )
    args = parser.parse_args()

    reports = []
    for path in args.reports:
        try:
            reports.append(load_report(path))
        except Exception as e:
            print(f"Error loading {path}: {e}", file=sys.stderr)
            sys.exit(1)

    plot(reports, output_path=args.output, show=args.show)


if __name__ == "__main__":
    main()
