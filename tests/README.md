<!-- tests/README.md -->

# Verification

`run.sh` builds a temporary home and verifies:

- syntax of every new Zsh/Bash source;
- absence of `eval` in the active implementation;
- installer idempotency and ownership boundaries;
- silent non-interactive behavior;
- independent base boot;
- OMZ integration;
- repeated-source guarding;
- continuation after an absent optional module;
- versioned cache clearing;
- non-destructive uninstallation.

The suite does not touch the real home directory, download fonts, invoke
`sudo`, start tmux, initialize language runtimes, or source legacy `core/`.

Run it with:

```bash
cd /projects/ahmyzsh
./tests/run.sh
```

Performance is measured separately by `scripts/benchmark.zsh` so normal machine
variance does not turn a functional test into a flaky threshold test.
