<!-- zsh/bin/README.md -->

# Audited commands

This directory—not historical `core/bin`—is on the active PATH.

- `ahm-doctor`: independent health report through a clean interactive shell.
- `ahm-cache`: guarded cache status, warm, clear and invalidation lifecycle.
- `ahm-path`: one PATH entry per line.

New commands require a valid shebang, `--help` when arguments are nontrivial,
meaningful status codes, no dependency on interactive aliases, and tests
proportional to their effects. Administrative commands remain legacy until
individually vetted.
