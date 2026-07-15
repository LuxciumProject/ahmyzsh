<!-- zsh/README.md -->

# Active Zsh plane

This directory is the entire active shell implementation.

| Entry | Responsibility | May write/output? |
|---|---|---|
| `env.zsh` | XDG defaults, editor, minimal user command paths | never |
| `boot.zsh` | interactive guard, timer start, backbone, manifest | warnings/profile only |
| `lib/` | dependency-free infrastructure | only explicit lifecycle calls |
| `config/` | portable defaults and prompt policy | never directly |
| `modules/` | one isolated interactive concern per file | module-dependent |
| `bin/` | standalone audited commands | when invoked |
| `omz-custom/` | dedicated future OMZ custom boundary | through OMZ only |

The shell must remain useful when any integration above the backbone is absent.
Do not source legacy `core/` folders from here.

## Adding a module

1. Add `modules/<capability>.zsh` with no hidden source-order assumptions.
2. Add the name to `AHMYZSH_MODULES` at the correct dependency position.
3. Treat missing external commands as an optional note, not a boot failure.
4. Add an isolated test and a doctor check when the dependency matters.
5. Measure the stage before adding caching, lazy loading or compilation.
