<!-- documentation/MODULAR-BOOT-SPINE.md -->

# Modular boot spine: decisions and migration contract

## Objective

Recover the original goal—a highly customized human-facing workstation plane—
without making every capability a dependency of every shell.

## Dependency direction

```text
Zsh + filesystem
  └─ silent environment
      └─ interactive backbone
          ├─ independent shell policy
          ├─ small user command API
          └─ optional integrations
              ├─ Oh My Zsh/completion
              └─ Powerlevel10k/visual prompt

Future path, machine, tmux and REPL planes depend downward on the backbone.
The backbone never depends upward on them.
```

## Ordering rationale

1. `base-options` establishes native Zsh behavior.
2. `core-functions` exposes lifecycle and safe utility functions without OMZ.
3. `core-commands` exposes only commands reviewed for the new plane.
4. `oh-my-zsh` owns framework plugins and completion once.
5. `history` reapplies AhMyZSH's state policy after framework defaults.
6. `core-aliases` loads after OMZ so user vocabulary has explicit precedence.
7. `prompt` selects P10k only when the dependency and a TTY exist.
8. `keybindings` applies final input policy after framework/widget setup.

Changing this sequence requires stating which dependency or precedence rule
changed and adding a test.

## Timing and caching

`boot.zsh` loads `zsh/datetime` and records `EPOCHREALTIME` before module work.
Start/end timing is always available. Detailed per-module collection and output
are opt-in to avoid making observability the performance problem.

The initial implementation intentionally does not cache PATH or compile source:

- native unique arrays make the small base PATH cheap;
- a cached shell program is an execution and invalidation liability;
- `zcompile` is useful only after real profiling identifies parse cost;
- OMZ completion already benefits from a persistent `zcompdump` in a versioned
  AhMyZSH cache directory;
- P10k owns its instant-prompt cache and `ahm cache` knows how to remove it.

Cache schema names are part of paths. A schema change creates a cold cache
without parsing or executing old cache content.

## Failure model

- Backbone file failure is fatal because status/timing/loading cannot be trusted.
- Optional dependency absence is a module note and functional fallback.
- A module source failure is recorded; later independent modules still run.
- A concise interactive warning points to `ahm doctor`.
- Non-interactive shells never enter this model and produce no AhMyZSH output.

## Initial salvage subset

The initial alias/function surface is intentionally unsurprising: directory
movement, Git shorthand/status, readable listing, `mkcd`, PATH display and the
AhMyZSH lifecycle dispatcher. The active command directory contains only doctor,
cache and PATH inspection.

This is a topology demonstration, not a claim that the historical library is
unimportant. Every additional legacy name needs a disposition and collision
check before activation.

## Milestones

1. Stable silent base on Kubuntu with clean installation and fallback behavior.
2. Usage-informed alias/function/command salvage.
3. Declarative PATH/runtime extension.
4. Pinned dependency/update policy and selected interactive plugins.
5. Declarative tmux sessions.
6. Independent Node and Python REPLs.
7. Typed multi-machine deployment, then selective Fedora recovery.
8. Generated state/vendor/private-history cleanup after salvage is complete.
