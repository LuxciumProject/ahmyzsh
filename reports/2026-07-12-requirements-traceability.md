<!-- reports/2026-07-12-requirements-traceability.md -->

# Modular boot requirements traceability

**Target branch:** `feat/modular-boot-spine`

| Requested intent | Implementation/evidence | Status |
|---|---|---|
| Replace the active boot spine rather than patch every legacy file | `zsh/env.zsh`, `zsh/boot.zsh`, `zsh/lib/`; old `MAIN*.sh` and `core/` are dormant | complete |
| Correct startup ordering | silent environment in `.zshenv`; interactive guard before modules; explicit manifest order | complete |
| Start timing at the beginning and measure important stages optionally | `zsh/datetime` timestamp in `boot.zsh`; stage/module records only when profiling | complete |
| Keep lower layers operational when higher layers are missing | missing modules skip; missing OMZ/P10k use native shell/prompt; failures recorded | complete |
| Make dependencies and precedence obvious | `AHMYZSH_MODULES` is the sole ordered manifest; module README explains every position | complete |
| Integrate Oh My Zsh inside an AhMyZSH harness | dedicated OMZ module, dedicated `ZSH_CUSTOM`, versioned `ZSH_COMPDUMP`, updates disabled during boot | complete |
| Preserve a colorful interface | lightweight P10k policy plus colorful native fallback | complete |
| Download terminal fonts during installation | four checksum-pinned MesloLGS NF files installed user-locally by default | complete |
| Focus on Kubuntu; keep Fedora material legacy | installer supports apt only when explicitly requested; Fedora has a legacy boundary | complete |
| Migrate only an obvious safe core subset | small aliases/functions and three audited `ahm-*` commands; legacy `core/bin` is not on PATH | complete |
| Keep cache lifecycle explicit and safe | status, warm, clear, invalidate; guarded/versioned paths; installer warm-up | complete |
| Be fast without unjustified complexity | native base has no subprocess discovery or compiled-source cache; cold/warm benchmark is isolated | complete |
| Leave intuitive places for PATH, tmux, REPLs and machine profiles | documented `extensions/` subdirectories; none are active dependencies | complete |
| Keep folders understandable and extensible | README in every new architectural directory; path comments in every new artifact | complete |
| Preserve legacy value without bulk-loading it | `legacy/README.md` disposition map and full Git history/branches | complete |
| Validate repeatedly and keep reports in the project | automated suite, isolated benchmark, TTY smoke test, dedicated indexed `reports/` | complete |

## Explicitly postponed—not forgotten

- declarative PATH/runtime ownership and project environment activation;
- tmux configuration/session reconstruction;
- modern Node REPL and new Python REPL;
- usage-informed migration of the large alias/function/command catalogs;
- Fedora/CUDA/NVIDIA capability modules;
- dependency provenance cleanup and removal of committed generated/private state;
- multi-machine deployment templates.

These capabilities are postponed because activating them now would violate the
new dependency boundary. Each has a documented destination under `extensions/`
or `legacy/`.
