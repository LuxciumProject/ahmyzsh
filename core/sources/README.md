# core/sources/ — Sourceable Environment Snippets

← Back to [core/README.md](../README.md) | [Repository README](../../README.md)

This directory contains files meant to be sourced (not executed) to initialize specific tool environments or hardware configurations. Unlike the files in `core/` subdirectories that are auto-loaded by the boot chain, these files are typically sourced on-demand.

---

## Table of Contents

- [Files](#files)
- [File Details](#file-details)
- [Notes](#notes)

---

## Files

| File | Tool | Purpose |
|------|------|---------|
| [`btop`](btop) | btop++ | Environment/configuration for btop resource monitor |
| [`gpu-thermal-brightness`](gpu-thermal-brightness) | NVIDIA GPU | GPU thermal management and display brightness configuration |

---

## File Details

### `btop`

**Tool:** [btop++](https://github.com/aristocratos/btop) — a resource monitor with an interactive terminal UI.

**Purpose:** Sets up environment variables or configuration needed before launching btop. May configure color themes, process filtering, or system paths relevant to btop's operation.

> 📝 **Note:** `btop` is listed in `core/aliases/13010-ALS-nmon.sh` alongside `nmon`. This file likely provides configuration context for the `btop` alias or for sourcing before running btop in certain terminal configurations.

**Usage:**
```shell
source /projects/ahmyzsh/core/sources/btop
btop
```

---

### `gpu-thermal-brightness`


**Tool:** NVIDIA GPU management + display brightness control.

**Purpose:** Configures GPU fan speed, thermal targets, and display brightness settings for the NVIDIA GPU. This is related to the scripts in `core/bin/` such as `GPUTargetFanSpeed`, `DitheringDynamic`, and the NVIDIA aliases in `core/aliases/78000-nvidia.sh`.

**Context:** The AHMYZSH environment targets a system with an NVIDIA GPU running CUDA 12.4. GPU thermal management is important for sustained performance during AI/ML workloads (Stable Diffusion, ComfyUI).

**Usage:**
```shell
source /projects/ahmyzsh/core/sources/gpu-thermal-brightness
```

---

## Notes

### Why a Separate `sources/` Directory?

Unlike shell functions and aliases (which are loaded once at boot and become available as commands), these files contain configuration that may need to be re-applied in specific contexts — for example, before launching a hardware-intensive application, or after a display configuration change.

Keeping them in `sources/` separates them from the auto-loaded boot-chain files and makes it clear that they are intended to be manually sourced when needed.

### Not in the Automatic Load Order

`core/sources/` is **not** included in `load_all_config_and_settings_files()`. These files must be sourced explicitly.

### Naming Convention

Files in `sources/` follow the pattern of being named after the tool or hardware they configure, without a `.sh` extension. This is a convention indicating they are not scripts to execute but snippets to source.

### Extending This Directory

To add a new sourceable environment snippet:

1. Create a file named after the tool/context (no `.sh` extension by convention)
2. Include only `export` statements, variable assignments, and path modifications
3. Document the file's purpose in this README
4. Optionally create an alias in `core/aliases/` that sources it before running the related tool

---

*← Back to [core/README.md](../README.md) | [Repository README](../../README.md)*
