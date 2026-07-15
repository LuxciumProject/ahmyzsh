#!/usr/bin/env zsh
# source-me-in-etc-zshenv.sh
# Legacy /etc/zshenv compatibility hook. It is intentionally silent and minimal.

# New installations use user-level ~/.zshenv and ~/.zshrc managed blocks instead.
# This compatibility file must never load prompt, OMZ, completion, aliases, or runtimes.
typeset -g AHMYZSH_ROOT=${AHMYZSH_ROOT:-${${(%):-%N}:A:h}}
[[ -r $AHMYZSH_ROOT/zsh/env.zsh ]] && source $AHMYZSH_ROOT/zsh/env.zsh
