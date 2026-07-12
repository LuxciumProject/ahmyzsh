<!-- reports/2026-07-11-modular-boot-verification.md -->

# Modular boot verification record

**Revision under test:** local `feat/modular-boot-spine` implementation
**Verification environment:** Linux, Zsh 5.9
**Date:** 2026-07-11

## Automated suite

`tests/run.sh` completed with **45 passed, 0 failed**. It verified syntax,
installer idempotency, managed-block ownership, silent non-interactive startup,
independent base startup, OMZ integration, module fallback, repeated-source
guarding, profiling output, cache lifecycle and uninstall behavior in temporary
homes.

## Dependency degradation

With OMZ and Powerlevel10k paths deliberately set to absent directories, the
shell reached `AHMYZSH_BOOT_STATE=loaded`, recorded diagnostic notes, used the
native colorful prompt and reported zero failed modules.

With an absent module inserted between working modules, the absent module was
recorded as skipped and later independent modules loaded.

## Interactive terminal

In a pseudo-terminal with the vendored dependencies enabled, Powerlevel10k
defined its `p10k` function, the shell reached `loaded`, and no module failed.
Five consecutive boots using one temporary home measured 347.474 ms cold, then
41.087–51.386 ms warm after OMZ completion/P10k caches existed.
After adding installer cache prewarming, the first real pseudo-terminal boot in
a newly installed temporary home measured 36.510 ms with P10k active.

## Performance sample

Thirty isolated warm child shells plus one cold run per configuration produced
these results in temporary homes in the audit container:

| Configuration | Time |
|---|---:|
| independent base, cold | 7.729 ms |
| independent base, warm median | 4.212 ms |
| OMZ integration, cold | 284.953 ms |
| OMZ integration, warm median | 33.823 ms |

These numbers are comparison evidence, not a universal machine budget. The
base/OMZ difference demonstrates that the dependency boundary is measurable and
useful. The installer now warms framework/completion caches by default so the
first real terminal does not also pay the OMZ cold-cache cost. Real acceptance
measurements must also run on the target Kubuntu machine.

## Font installation

All four MesloLGS NF files were fetched from the Powerlevel10k-maintained media
repository and their SHA-256 values captured in `scripts/install.sh`. Downloads
are written to temporary files, checked before publication, retried for transient
network errors, and skipped on later runs when the installed checksum matches.

## Deliberate non-tests

No Fedora, CUDA, DNF, runtime-manager, tmux, REPL, administrative legacy command,
private snapshot or committed virtual environment was activated. Those are
explicit later extension/salvage planes, not hidden dependencies of this result.
