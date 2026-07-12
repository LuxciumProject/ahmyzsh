<!-- zsh/config/README.md -->

# Configuration

`defaults.zsh` is portable source policy. `p10k.zsh` is a lightweight colorful
prompt configuration without startup subprocesses. `config.example.zsh`
documents supported machine-local overrides.

The real local override is outside Git:

```text
~/.config/ahmyzsh/config.zsh
```

Machine facts, secrets and project-local environments do not belong in this
directory. Their future boundary is documented under `extensions/machines/`.
