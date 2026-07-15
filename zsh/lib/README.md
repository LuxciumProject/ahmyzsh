<!-- zsh/lib/README.md -->

# Backbone library

These files form the minimum trusted dependency chain:

1. `state.zsh` owns status arrays and boot state.
2. `timer.zsh` records stage and total times.
3. `cache.zsh` owns versioned cache paths and guarded deletion.
4. `loader.zsh` sources the explicit manifest and isolates failures.
5. `diagnostics.zsh` exposes doctor, reload and profiling behavior.

The library must not depend on Oh My Zsh, Powerlevel10k, tmux, a language
runtime, a distribution package manager, project paths, or legacy globals.
