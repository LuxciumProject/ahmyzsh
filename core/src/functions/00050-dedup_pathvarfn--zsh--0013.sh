function dedup_pathvar_() {
  # #region Deduplicate path variables =========================================¹
  # https://unix.stackexchange.com/a/149054/431235
  # © 2014 by https://unix.stackexchange.com/users/1010
  # © CC BY-SA 3.0 ¹ (User: Ryan C. Thompson ― Aug 7 '14 at 17:35)

  ## If you want some more structure around it,
  ## as well as the ability to deduplicate other variables as well,
  ## try this snippet, which I'm currently using in my own config:

  _get_var() {
    eval 'printf "%s\n" "${'"$1"'}"'
  }

  _set_var() {
    eval "$1=\"\$2\""
  }

  _dedup_pathvar() {
    pathvar_name="$1"
    pathvar_value="$(_get_var "$pathvar_name")"
    deduped_path="$(perl -e 'print join(":",grep { not $seen{$_}++ } split(/:/, $ARGV[0]))' "$pathvar_value")"
    _set_var "$pathvar_name" "$deduped_path"
  }

  ## That code will deduplicate both PATH and MANPATH,
  ##  and you can easily call dedup_pathvar on other variables that hold
  ##  colon-separated lists of paths (e.g. PYTHONPATH).

  # #endregion Deduplicate path variables ======================================¹
  _dedup_pathvar "${@}"

  unset -f _dedup_pathvar
  unset -f _get_var
  unset -f _set_var

}
