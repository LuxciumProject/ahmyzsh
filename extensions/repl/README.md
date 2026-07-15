<!-- extensions/repl/README.md -->

# REPL extension placeholder

Node and Python REPLs will be standalone capabilities with their own locked
dependencies and optional context packs. They will not be aliases that depend
on untracked home files, and no network listener will be enabled by default.

The Node implementation will recover valuable inspection/history/context
behavior from its historical repository. The Python implementation is new work
because the historical repository is mostly a scaffold.
