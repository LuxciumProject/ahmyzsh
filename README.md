<!-- README.md -->

# AhMyZSH

AhMyZSH is a personal, modular Zsh environment built around a small resilient
backbone. The active design is Kubuntu-first, user-level, silent for
non-interactive shells, colorful when a terminal supports it, and explicit
about dependencies.

The historical workstation framework remains in this repository for staged
salvage, but it is no longer the active boot path.

## Active topology

```text
~/.zshenv
  └─ zsh/env.zsh                 silent portable environment

~/.zshrc
  └─ zsh/boot.zsh                interactive guard and initial timestamp
      ├─ zsh/lib/                state, timer, cache, loader, diagnostics
      ├─ zsh/config/             defaults plus user-owned override
      └─ explicit module manifest
          ├─ base-options
          ├─ core-functions
          ├─ core-commands
          ├─ oh-my-zsh           optional integration boundary
          ├─ history
          ├─ core-aliases
          ├─ prompt              P10k or native fallback
          └─ keybindings
```

No module-directory glob is used. The order in `zsh/config/defaults.zsh` is the
reviewable dependency and precedence order.

## Install on Kubuntu

Inspect without writing:

```bash
cd /projects/ahmyzsh
./scripts/install.sh --check
```

Install user hooks and checksum-verified MesloLGS NF fonts:

```bash
cd /projects/ahmyzsh
./scripts/install.sh
```

If prerequisites are absent, package installation is explicit because it uses
`sudo`:

```bash
cd /projects/ahmyzsh
./scripts/install.sh --with-packages
```

The installer preserves existing dotfiles, owns marked blocks, is safe to run
again, and supports `--dry-run` and `--uninstall`. Select **MesloLGS NF** in the
Konsole profile after installation.

Then open a new Zsh and run:

```zsh
cd /projects/ahmyzsh
ahm doctor
```

## Daily lifecycle

| Command | Purpose |
|---|---|
| `ahm doctor` | Report boot, dependency, module, cache, and prompt health |
| `ahm profile` | Start an isolated profiled shell and show stage timings |
| `ahm cache status` | Report current versioned cache |
| `ahm cache clear` | Remove only the active cache schema and instant prompt |
| `ahm cache invalidate` | Remove all AhMyZSH-owned cache generations |
| `ahm reload` | Replace the process with a fresh login Zsh; never double-source |
| `ahm root` | Print the active repository root |

Standalone equivalents live in `zsh/bin/` for use without the interactive
function namespace.

## Customization

Do not edit `zsh/config/defaults.zsh` for machine-local preferences. Create:

```text
~/.config/ahmyzsh/config.zsh
```

Use `zsh/config/config.example.zsh` as the map. Modules can be added, removed or
reordered explicitly. Missing optional frameworks produce a functional native
shell rather than a broken boot.

## Performance policy

- The high-resolution start timestamp is captured before module work.
- Detailed timing is opt-in with `AHMYZSH_PROFILE=1` or `ahm profile`.
- The base has no subprocess-based machine detection or PATH reconstruction.
- Source files are not recompiled on each boot.
- Versioned cache paths make invalidation structural rather than heuristic.
- Oh My Zsh owns completion once; AhMyZSH provides the cache location.
- Powerlevel10k instant prompt is used only when its own cache exists.
- Runtime managers, tmux and REPLs are postponed until their boundaries are
  characterized and tested.

Measure locally with `./scripts/benchmark.zsh`. A cache or compiled-source layer
will be added only if a measured bottleneck justifies its complexity.

## Repository map

| Path | Authority |
|---|---|
| [`zsh/`](zsh/) | active boot and interactive modules |
| [`scripts/`](scripts/) | installation and benchmarking lifecycle |
| [`tests/`](tests/) | isolated behavior, degradation and performance checks |
| [`extensions/`](extensions/) | documented future capability boundaries |
| [`legacy/`](legacy/) | disposition map for historical surfaces |
| `core/`, `MAIN*.sh` | dormant historical implementation; salvage source only |
| `ohmyzsh/`, `powerlevel10k/` | currently vendored optional dependencies |
| [`documentation/`](documentation/) | audit, decisions and migration design |

## Design references

The architecture follows the [Zsh startup-file model](https://zsh.sourceforge.io/Doc/Release/Files.html):
the unavoidable environment layer stays silent and interactive work belongs in
`.zshrc`. High-resolution measurements use the documented
[`zsh/datetime` module](https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html).
Oh My Zsh custom code has its own `ZSH_CUSTOM` boundary, and the installer uses
the four fonts recommended by the
[Powerlevel10k font guide](https://github.com/romkatv/powerlevel10k/blob/master/font.md).
