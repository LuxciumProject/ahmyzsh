# core/paths/ — Framework Path Variable Declarations

← Back to [core/README.md](../README.md) | [Repository README](../../README.md)

This directory exports all framework-level path variables — the "map" that other modules use to locate AHMYZSH components, third-party tools (Oh My Zsh, Powerlevel10k, plugins), and user data directories.

---

## Table of Contents

- [Files](#files)
- [Exported Variables](#exported-variables)
- [Functions Defined](#functions-defined)
- [Notes](#notes)

---

## Files

| File | Purpose |
|------|---------|
| [`00000-init-paths.sh`](00000-init-paths.sh) | All framework path exports and stable-diffusion helpers |

---

## `00000-init-paths.sh`

**Sourced by:** `load_all_config_and_settings_files()` — first directory in load order.

### Exported Variables

#### Framework Root

| Variable | Default Value | Purpose |
|----------|--------------|---------|
| `AHMYZSH` | `/projects/ahmyzsh` | Repository root (uses `${AHMYZSH:=...}` default) |
| `AHMYZSH_CACHE` | `${HOME}/.cache/ahmyzsh` | Cache directory for compiled files and PATH cache |
| `CACHED_PATH` | `${AHMYZSH_CACHE}/path.env` | Cached PATH environment file |
| `MAIN_BOOTSTRAP` | `${AHMYZSH}/MAIN.sh` | Path to main bootstrap file |

#### Oh My Zsh and Themes

| Variable | Value | Purpose |
|----------|-------|---------|
| `OHMYZSH` | `${AHMYZSH}/ohmyzsh` | Oh My Zsh installation directory |
| `ZSH` | `${OHMYZSH}` | Required by Oh My Zsh init scripts |
| `POWERLEVEL10K` | `${AHMYZSH}/powerlevel10k` | Powerlevel10k theme directory |
| `ZSH_PLUGINS` | `${AHMYZSH}/plugins` | Third-party plugins directory |
| `ZSH_THEMES` | `${AHMYZSH}/themes` | Custom themes directory |

#### Core Module Directories

| Variable | Value | Purpose |
|----------|-------|---------|
| `AHMYZSH_CORE` | `${AHMYZSH}/core` | Core modules root |
| `MYZSH_CORE` | `${AHMYZSH_CORE}` | Alias for `AHMYZSH_CORE` |
| `ZSH_CORE` | `${AHMYZSH_CORE}` | Another alias for `AHMYZSH_CORE` |
| `CORE_ALIASES` | `${ZSH_CORE}/aliases` | Alias files directory |
| `CORE_BIN` | `${ZSH_CORE}/bin` | Executable scripts directory |
| `CORE_COMPLETE` | `${ZSH_CORE}/complete.d` | Autocompletion files directory |
| `CORE_COMPUTE` | `${ZSH_CORE}/compute-path` | PATH computation directory |
| `CORE_ENV` | `${ZSH_CORE}/env` | Environment variable files |
| `CORE_FUNCTIONS` | `${ZSH_CORE}/functions` | Function library directory |
| `CORE_LAYOUTS` | `${ZSH_CORE}/layouts` | ANSI layout/color files |
| `CORE_OPTIONS` | `${ZSH_CORE}/options` | Zsh options files |
| `CORE_PATHS` | `${ZSH_CORE}/paths` | This directory |
| `CORE_TEMP` | `${ZSH_CORE}/temp` | Temporary files directory |

#### Media and External Paths

| Variable | Value | Purpose |
|----------|-------|---------|
| `DESTINATION_PATH` | `/media/luxcium/100 GIO/downloads` | External drive downloads path |
| `MY_MULTIMEDIA` | `${AHMYZSH}/multimedia` | Multimedia assets directory |
| `MY_SOUNDS` | `${MY_MULTIMEDIA}/sounds` | Sound notification files |
| `CUSTOM_TMUX` | `${AHMYZSH}/tmux` | Custom tmux configuration |

> ⚠️ **Warning:** `DESTINATION_PATH` and `MY_MULTIMEDIA` are hardcoded to user-specific paths (`/media/luxcium/`, `${AHMYZSH}/multimedia`). These will not work on another user's system or if the external drive is mounted at a different location.

### Functions Defined

#### `comfyui()`

```shell
comfyui() {
  cd /home/luxcium/seagate/stable-diffusion-models/ComfyUI/ || return 15
  conda activate sdxl
}
```

Navigates to the ComfyUI directory and activates the `sdxl` Conda environment. Used for Stable Diffusion XL image generation.

> ⚠️ **Warning:** Hardcodes the path `/home/luxcium/seagate/...`. Should use a variable or `$HOME`.

> 📝 **Note:** Uses non-standard exit code `15` on `cd` failure. A conventional error exit code (`1`) would be more portable and interoperable with calling code.

#### `auto1111()`

```shell
auto1111() {
  cd /home/luxcium/seagate/stable-diffusion-models/stable-diffusion-webui || return 15
  conda activate sdxl
}
```

Navigates to the AUTOMATIC1111 Stable Diffusion WebUI directory and activates the `sdxl` Conda environment.

> ⚠️ **Warning:** Same hardcoded path issue as `comfyui()`.

> 📝 **Note:** Uses non-standard exit code `15` on `cd` failure. A conventional error exit code (`1`) would be more portable.

---

## Notes

### Multiple Aliases for the Same Variable

`AHMYZSH_CORE`, `MYZSH_CORE`, and `ZSH_CORE` all point to the same directory. This redundancy suggests the variable name was changed at some point but backward-compatible aliases were kept. Future code should standardize on `AHMYZSH_CORE`.

### `ZSH` Variable Conflicts

Setting `ZSH="${OHMYZSH}"` is required by Oh My Zsh's initialization, but this variable is also used by some Zsh utilities (e.g., `ZSH_VERSION`, `ZSH_NAME`). The Oh My Zsh convention of using `ZSH` as its install directory is non-standard and should be noted when debugging.

### Commented-Out Variables

The file contains extensive commented-out variable definitions for `PLUGINS_BIN`, `ZSH_BIN`, `ZSH_SOURCES`, and other paths from an earlier directory structure. These comments document the evolution of the directory layout and could be removed once the current structure is stable.

---

*← Back to [core/README.md](../README.md) | [Repository README](../../README.md)*
