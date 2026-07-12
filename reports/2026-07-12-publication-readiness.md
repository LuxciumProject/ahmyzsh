<!-- reports/2026-07-12-publication-readiness.md -->

# Publication-readiness report

**Branch:** `feat/modular-boot-spine`
**Base:** `origin/main` at `ca0111a7`
**Primary implementation commit:** `81830be2ba34`
**Hardening and reports commit:** `62a2a49`

## Intended publication scope

- active modular Zsh environment and interactive boot;
- explicit module configuration and lightweight prompt policy;
- audited lifecycle commands;
- idempotent Kubuntu/user-level installer and font verification;
- isolated test and benchmark scripts;
- architecture, legacy, extension and report indexes;
- the original exhaustive repository audit.

The checkout exposes 52 unrelated deleted/broken symlink entries under the
committed virtual environment, private snapshots and vendored trees. They are a
workspace transport artifact, are not part of this branch's intended diff, and
must not be staged or published with the branch.

## Final verification gates

| Gate | Required result |
|---|---|
| staged scope | only named implementation/documentation/report paths |
| whitespace/patch validation | `git diff --check` clean |
| behavioral suite | all checks pass in temporary homes |
| non-interactive behavior | exact payload stdout; empty stderr |
| optional dependency degradation | loaded native shell; zero module failures |
| installer lifecycle | install twice, warm cache, clear cache, uninstall |
| benchmark isolation | temporary homes only; cold and warm results reported |
| real terminal | P10k function defined; options persistent; zero failures |
| active-scope reconstruction | tests pass from committed active files; active-scope diff is empty |
| remote publication | remote branch resolves to final local commit |

## Completed local results

- behavioral suite: **45 passed, 0 failed**;
- reconstructed-worktree behavioral suite: **45 passed, 0 failed**;
- reconstructed active-scope diff: clean;
- reconstructed benchmark: 7.087 ms base cold, 4.294 ms base warm median,
  278.292 ms OMZ cold, 33.836 ms OMZ warm median;
- prewarmed real pseudo-terminal: 36.510 ms, P10k active, persistent options,
  zero failed modules;
- full font lifecycle: four checksum-verified files installed; four detected and
  skipped on the second run;
- patch/whitespace check: clean;
- sensitive-addition scan: no personal diagnosis/name, credential assignment,
  private key marker, or absolute personal home path added.

The container's filesystem converts 52 historical symlinks into transport type
changes. A fresh worktree reproduced the same condition, but all active paths
were identical to the commit and passed independently. Those 52 paths remain
outside every commit in this branch.

## Known limitations retained intentionally

- OMZ and Powerlevel10k remain vendored historical snapshots pending a separate
  provenance/update migration.
- First-ever P10k rendering cannot use an instant-prompt file that does not yet
  exist; the installer prewarms OMZ completion to remove the larger cold cost.
- Konsole font selection remains a documented manual action because selecting a
  terminal profile automatically would be unsafe and machine-specific.
- Legacy aliases, functions, administrative commands, PATH runtimes, tmux and
  REPLs remain inactive until their individual migrations.

Remote branch equality is checked immediately after publication. The GitHub
branch and draft pull request are reported in the final handoff.
