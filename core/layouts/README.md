# core/layouts/ — ANSI Color and Formatting Constants

← Back to [core/README.md](../README.md) | [Repository README](../../README.md)

This directory exports ANSI escape code constants for text formatting (bold, underline, reverse), foreground colors, background colors (both normal and bright intensity), and cursor movement sequences. These variables are used throughout the AHMYZSH codebase for colored terminal output.

---

## Table of Contents

- [Files](#files)
- [Text Formatting Variables](#text-formatting-variables)
- [Foreground Color Variables](#foreground-color-variables)
- [Background Color Variables](#background-color-variables)
- [Cursor Movement Variables](#cursor-movement-variables)
- [Usage](#usage)
- [Notes](#notes)

---

## Files

| File | Purpose |
|------|---------|
| [`00000-layouts.sh`](00000-layouts.sh) | Primary ANSI constants: formatting, all colors, cursor movement |
| [`00001-mycolors.sh`](00001-mycolors.sh) | Additional/custom color definitions and aliases |

---

## `00000-layouts.sh`

**Sourced by:** `load_all_config_and_settings_files()` (second in load order, after `paths/`).

### Text Formatting Variables

| Variable | ANSI Code | Effect |
|----------|-----------|--------|
| `LBOLD` | `\u001b[1m` | Bold text |
| `LUND` | `\u001b[4m` | Underlined text |
| `LREV` | `\u001b[7m` | Reversed (inverted) colors |
| `RVSD` | `\u001b[7m` | Alias for `LREV` (reversed) |
| `RSET` | `\u001b[0m` | Reset all attributes |
| `bold` | `$LBOLD` | Alias for `LBOLD` |
| `normal` | `$RSET` | Alias for `RSET` |

### Functions

#### `hardcls()`

Clears the terminal screen using ANSI escape codes (without calling the `clear` command):

```shell
hardcls() {
  echo -n '\u001b[2J'    # Erase entire display
  echo -n '\u001b[0;0H'  # Move cursor to top-left
}
```

### Foreground Color Variables (Normal Intensity)

Two naming schemes are provided — the `F??` scheme (primary) and the `FN?` scheme (aliases):

| Primary Var | Alias Var | Color | ANSI Code |
|-------------|-----------|-------|-----------|
| `FBK` | `FNK` | Black | `\u001b[30m` |
| `FRD` | `FNR` | Red | `\u001b[31m` |
| `FGR` | `FNG` | Green | `\u001b[32m` |
| `FYL` | `FNY` | Yellow | `\u001b[33m` |
| `FBL` | `FNB` | Blue | `\u001b[34m` |
| `FMG` | `FNM` | Magenta | `\u001b[35m` |
| `FCY` | `FNC` | Cyan | `\u001b[36m` |
| `FWH` | `FNW` | White | `\u001b[37m` |

### Foreground Color Variables (Bright Intensity)

Two naming schemes — `F??_` scheme (trailing underscore = bright) and `FB?` scheme:

| Primary Var | Alias Var | Color | ANSI Code |
|-------------|-----------|-------|-----------|
| `FBK_` | `FBK` | Bright Black | `\u001b[30;1m` |
| `FRD_` | `FBR` | Bright Red | `\u001b[31;1m` |
| `FGR_` | `FBG` | Bright Green | `\u001b[32;1m` |
| `FYL_` | `FBY` | Bright Yellow | `\u001b[33;1m` |
| `FBL_` | `FBB` | Bright Blue | `\u001b[34;1m` |
| `FMG_` | `FBM` | Bright Magenta | `\u001b[35;1m` |
| `FCY_` | `FBC` | Bright Cyan | `\u001b[36;1m` |
| `FWH_` | `FBW` | Bright White | `\u001b[37;1m` |

> ⚠️ **Warning:** `FBK` is defined twice with different values: first as `\u001b[30m` (normal black) in the normal-intensity block, then overwritten with `\u001b[30;1m` (bright black) in the bright-intensity block. Code using `FBK` will get bright black. Use `FNK` for normal black.

### Background Color Variables (Normal Intensity)

| Primary Var | Alias Var | Color | ANSI Code |
|-------------|-----------|-------|-----------|
| `BBK` | `BNK` | Background Black | `\u001b[40m` |
| `BRD` | `BNR` | Background Red | `\u001b[41m` |
| `BGR` | `BNG` | Background Green | `\u001b[42m` |
| `BYL` | `BNY` | Background Yellow | `\u001b[43m` |
| `BBL` | `BNB` | Background Blue | `\u001b[44m` |
| `BMG` | `BNM` | Background Magenta | `\u001b[45m` |
| `BCY` | `BNC` | Background Cyan | `\u001b[46m` |
| `BWH` | `BNW` | Background White | `\u001b[47m` |

> ⚠️ **Warning:** `BBK` and `BBL` are overwritten in the bright-intensity block below with the bright variants (`\u001b[40;1m` and `\u001b[44;1m`). This is the same double-definition issue.

### Background Color Variables (Bright Intensity)

| Variable | Color | ANSI Code |
|----------|-------|-----------|
| `BBK_` | Bright Background Black | `\u001b[40;1m` |
| `BRD_` | Bright Background Red | `\u001b[41;1m` |
| `BGR_` | Bright Background Green | `\u001b[42;1m` |
| `BYL_` | Bright Background Yellow | `\u001b[43;1m` |
| `BBL_` | Bright Background Blue | `\u001b[44;1m` |
| `BMG_` | Bright Background Magenta | `\u001b[45;1m` |
| `BCY_` | Bright Background Cyan | `\u001b[46;1m` |
| `BWH_` | Bright Background White | `\u001b[47;1m` |

### Legacy Color Combinations

| Variable | Value | Meaning |
|----------|-------|---------|
| `BKBG` | `\u001b[40m` | Black background |
| `BKFG` | `\u001b[30m` | Black foreground |
| `YKBG` | `\u001b[43m` | Yellow background |
| `YKFG` | `\u001b[33m` | Yellow foreground |
| `BBCOLR` | `$BKFG$YKBG` | Black-on-yellow |
| `YBCOLR` | `$BKBG$YKFG` | Yellow-on-black |
| `BKBK` | `$BKBG$BKFG` | Black-on-black (invisible) |

### Cursor Movement Variables (from `LUP_A`, `LDOWN_B`, etc.)

Cursor movement ANSI escape sequences:

| Variable | ANSI Code | Effect |
|----------|-----------|--------|
| `LUP_A` | `\u001b[{n}A` | Move cursor up N lines |
| `LDOWN_B` | `\u001b[{n}B` | Move cursor down N lines |
| (others) | ... | Left, right, absolute positioning |

---

## `00001-mycolors.sh`

Defines additional color aliases and combinations not covered by `00000-layouts.sh`. Acts as an extension layer for project-specific color schemes.

---

## Usage

In shell scripts within the AHMYZSH codebase, these variables enable colored output:

```shell
echo "${LBOLD}${FGR}Success${RSET}"        # Bold green "Success"
echo "${FRD}Error: ${RSET}${FWH}$msg${RSET}"  # Red "Error: " followed by white message
echo "${LREV}Highlighted${RSET}"           # Reversed colors
```

---

## Notes

### Multiple Naming Schemes

The color variables exist in three overlapping naming schemes:
1. `F??` / `B??` — two-letter codes (primary)
2. `FN?` / `BN?` — "normal" prefix
3. `FB?` / `BB?` — "bright" prefix

This inconsistency makes the API confusing. A future cleanup should pick one scheme and deprecate the others.

### String Format vs Escape Sequences

The variables use `\u001b` unicode escape notation. In Zsh `echo`, use `echo -e` or `$'...'` syntax to interpret them. In `printf`, use `printf '%b'`. The double-quote expansion in `echo "${FRD}text${RSET}"` works because Zsh and modern bash handle `\u001b` in double-quoted strings when `$'...'` is not used.

### Duplication with `core/env/00000.sh`

The `core/env/` directory's `00000.sh` re-exports a subset of these same variables (`LBOLD`, `LUND`, `LREV`, `RSET`, and cursor codes). This is redundant — see [core/env/README.md](../env/README.md).

---

*← Back to [core/README.md](../README.md) | [Repository README](../../README.md)*
