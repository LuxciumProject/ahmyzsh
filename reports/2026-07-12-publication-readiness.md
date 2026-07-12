<!-- reports/2026-07-12-publication-readiness.md -->

# Publication-readiness report

**Branch:** `feat/modular-boot-spine`
**Base:** `origin/main` at `ca0111a7`
**Primary implementation commit:** `81830be2ba34`

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
| clean reconstruction | tests pass from committed files without unstaged artifacts |
| remote publication | remote branch resolves to final local commit |

## Known limitations retained intentionally

- OMZ and Powerlevel10k remain vendored historical snapshots pending a separate
  provenance/update migration.
- First-ever P10k rendering cannot use an instant-prompt file that does not yet
  exist; the installer prewarms OMZ completion to remove the larger cold cost.
- Konsole font selection remains a documented manual action because selecting a
  terminal profile automatically would be unsafe and machine-specific.
- Legacy aliases, functions, administrative commands, PATH runtimes, tmux and
  REPLs remain inactive until their individual migrations.

The final commit, remote ref and validation values are recorded before the
branch is pushed.
