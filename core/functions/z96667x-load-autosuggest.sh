function load_autosuggest() {
  # https://github.com/zsh-users/zsh-autosuggestions#configuration
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#677787"

  # https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
  ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

  zle_highlight=(region:standout special:standout
    suffix:bold isearch:underline paste:none)

  source_ "/usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
  source_ "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
}
