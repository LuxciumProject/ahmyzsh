# zsh/modules/core-commands.zsh
# Exposes only the new standalone, audited commands—not legacy core/bin.

if [[ -d $AHMYZSH_ROOT/zsh/bin ]]; then
  typeset -gU path PATH
  path=($AHMYZSH_ROOT/zsh/bin $path)
else
  ahm_module_note core-commands 'zsh/bin is unavailable'
fi
