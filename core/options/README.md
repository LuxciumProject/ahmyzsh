# core/options/ — Zsh Option Configuration

← Back to [core/README.md](../README.md) | [Repository README](../../README.md)

This directory contains one shell file per Zsh option. Each file is named after its corresponding Zsh option (e.g., `AUTO_CD.sh`, `EXTENDED_HISTORY.sh`) and contains a `setopt` or `unsetopt` invocation for that option, or is empty/commented to serve as documentation that the option was considered.

All files in this directory are loaded by `load_options_list()` which is called during the interactive shell initialization phase only (after the `isinteractive` guard).

---

## Table of Contents

- [Option Categories](#option-categories)
- [Key Options](#key-options)
- [Full File List](#full-file-list)
- [Notes](#notes)

---

## Option Categories

Zsh options are grouped into the following categories (per `man zshoptions`):

| Category | Examples |
|----------|---------|
| **Changing Directories** | `AUTO_CD`, `AUTO_PUSHD`, `PUSHD_*`, `CDABLE_VARS` |
| **Completion** | `AUTO_LIST`, `AUTO_MENU`, `COMPLETE_IN_WORD`, `MENU_COMPLETE` |
| **Expansion and Globbing** | `EXTENDED_GLOB`, `GLOB_DOTS`, `NULL_GLOB`, `NOMATCH` |
| **History** | `EXTENDED_HISTORY`, `HIST_IGNORE_DUPS`, `HIST_IGNORE_SPACE`, `SHARE_HISTORY` |
| **Initialisation** | `GLOBAL_RCS`, `RCS` |
| **Input/Output** | `INTERACTIVE_COMMENTS`, `PRINT_EXIT_VALUE`, `CLOBBER` |
| **Job Control** | `MONITOR`, `NOTIFY`, `BG_NICE`, `CHECK_JOBS` |
| **Prompting** | `PROMPT_SUBST`, `PROMPT_CR`, `TRANSIENT_RPROMPT` |
| **Scripts and Functions** | `LOCAL_OPTIONS`, `LOCAL_TRAPS`, `MULTI_FUNC_DEF` |
| **Shell State** | `INTERACTIVE`, `LOGIN`, `PRIVILEGED`, `RESTRICTED` |
| **Zle** | `ZLE`, `VI`, `EMACS`, `BEEP` |

---

## Key Options

### History Options

| File | Effect |
|------|--------|
| `EXTENDED_HISTORY.sh` | Saves timestamps with each history entry |
| `HIST_IGNORE_DUPS.sh` | Don't record consecutive duplicate commands |
| `HIST_IGNORE_SPACE.sh` | Don't record commands prefixed with a space |
| `HIST_IGNORE_ALL_DUPS.sh` | Remove older duplicates when a new duplicate is added |
| `HIST_FIND_NO_DUPS.sh` | Skip duplicates during history search |
| `HIST_REDUCE_BLANKS.sh` | Remove superfluous blanks from history |
| `HIST_SAVE_NO_DUPS.sh` | Don't save duplicates to history file |
| `SHARE_HISTORY.sh` | Share history between all open sessions |
| `INC_APPEND_HISTORY.sh` | Write to history file immediately (not on exit) |
| `APPEND_HISTORY.sh` | Append to history file rather than overwriting |

### Navigation Options

| File | Effect |
|------|--------|
| `AUTO_CD.sh` | Type a directory name to `cd` into it (no `cd` command needed) |
| `AUTO_PUSHD.sh` | Make `cd` push directories onto the directory stack |
| `PUSHD_IGNORE_DUPS.sh` | Don't push duplicate directories |
| `PUSHD_SILENT.sh` | Suppress directory stack output on `pushd`/`popd` |
| `CDABLE_VARS.sh` | Allow `cd varname` to cd to the value of a variable |

### Completion Options

| File | Effect |
|------|--------|
| `AUTO_LIST.sh` | List completions on Tab if ambiguous |
| `AUTO_MENU.sh` | Show completion menu on second Tab |
| `COMPLETE_IN_WORD.sh` | Allow completion from any position in a word |
| `ALWAYS_TO_END.sh` | Move cursor to end after completion |
| `LIST_PACKED.sh` | Pack completion list (wider items, less vertical space) |
| `LIST_ROWS_FIRST.sh` | Fill completion list rows first |
| `COMPLETE_ALIASES.sh` | Expand aliases during completion |

### Globbing Options

| File | Effect |
|------|--------|
| `EXTENDED_GLOB.sh` | Enable `#`, `~`, `^` glob operators |
| `GLOB_DOTS.sh` | Match dotfiles in glob patterns |
| `NULL_GLOB.sh` | Remove unmatched globs from argument list |
| `NOMATCH.sh` | Error if glob has no matches (default Zsh behavior) |
| `NUMERIC_GLOB_SORT.sh` | Sort numeric filenames numerically |

### Vi Mode

| File | Effect |
|------|--------|
| `VI.sh` | Enable vi-style command-line editing |

> 📝 **Note:** Vi mode is also activated via `bindkey -v` in `MAIN_SETTINGS.sh` (set three times total). The `VI.sh` option file and `bindkey -v` are complementary but serve slightly different purposes — `setopt VI` affects Zsh's internal vi mode flag, while `bindkey -v` applies vi keymap bindings to ZLE (Zsh Line Editor).

### Job Control

| File | Effect |
|------|--------|
| `MONITOR.sh` | Enable job control |
| `NOTIFY.sh` | Report job status immediately |
| `BG_NICE.sh` | Run background jobs at lower priority |
| `CHECK_JOBS.sh` | Warn about running jobs on exit |
| `LONG_LIST_JOBS.sh` | Use verbose format for job listings |

### Prompting

| File | Effect |
|------|--------|
| `PROMPT_SUBST.sh` | Enable parameter expansion in prompts |
| `PROMPT_CR.sh` | Print carriage return before prompt |
| `TRANSIENT_RPROMPT.sh` | Remove right prompt after command is entered |

---

## Full File List

The directory contains approximately 140 option files. A representative sample:

```
ALIASES.sh              GLOB_DOTS.sh            PRINT_EIGHT_BIT.sh
ALL_EXPORT.sh           HIST_ALLOW_CLOBBER.sh   PRINT_EXIT_VALUE.sh
ALL_HIST.sh             HIST_APPEND.sh          PRIVILEGED.sh
ALWAYS_LAST_PROMPT.sh   HIST_BEEP.sh            PROMPT_BANG.sh
ALWAYS_TO_END.sh        HIST_EXPAND.sh          PROMPT_CR.sh
APPEND_HISTORY.sh       HIST_EXPIRE_DUPS_FIRST  PROMPT_PERCENT.sh
AUTO_CD.sh              HIST_FCNTL_LOCK.sh      PROMPT_SP.sh
AUTO_CONTINUE.sh        HIST_FIND_NO_DUPS.sh    PROMPT_SUBST.sh
AUTO_LIST.sh            HIST_IGNORE_ALL_DUPS.sh PROMPT_VARS.sh
AUTO_MENU.sh            HIST_IGNORE_DUPS.sh     PUSHD_IGNORE_DUPS.sh
AUTO_PUSHD.sh           HIST_IGNORE_SPACE.sh    PUSHD_SILENT.sh
BANG_HIST.sh            HIST_NO_FUNCTIONS.sh    SHARE_HISTORY.sh
BEEP.sh                 HIST_REDUCE_BLANKS.sh   TRANSIENT_RPROMPT.sh
CDABLE_VARS.sh          HIST_SAVE_BY_COPY.sh    VI.sh
COMPLETE_ALIASES.sh     HIST_SAVE_NO_DUPS.sh    WARN_CREATE_GLOBAL.sh
COMPLETE_IN_WORD.sh     HIST_VERIFY.sh          ZLE.sh
EXTENDED_GLOB.sh        INTERACTIVE_COMMENTS.sh
EXTENDED_HISTORY.sh     MENU_COMPLETE.sh
```

---

## Notes

### One File Per Option — Design Philosophy

This structure makes it trivial to enable or disable individual options by modifying, adding, or removing a single file. It also makes the option configuration self-documenting — the file name tells you which option is configured.

### Empty Files as Documentation

Some files may be empty or contain only comments. This is intentional — the file's existence documents that the option was considered and deliberately left at its default value.

### Loaded Only for Interactive Shells

`load_options_list()` is called after the `isinteractive` guard in `MAIN.sh`. Options set here do not affect non-interactive shells, scripts, or subshells that don't source the framework interactively.

### Interaction with Oh My Zsh

Oh My Zsh also calls `setopt` for many options in its initialization. Since `load_options_list()` is called before `load_oh_my_zsh()` in the boot chain, Oh My Zsh may override some of these settings. Verify option state with `setopt` in an interactive shell after full initialization.

### Performance

Loading ~140 small files has a small but nonzero overhead. The `load_options_list()` function in `core/functions/z96661x-load_options_list.sh` consolidates the `setopt` calls into a single function, which is the better approach for performance. The individual option files serve as the authoritative source of truth that generates (or could generate) the consolidated function.

---

*← Back to [core/README.md](../README.md) | [Repository README](../../README.md)*
