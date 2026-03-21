#!/usr/bin/env zsh
set +m

#& Scientia es lux principium
#+ =============================================================================≈
#? MIT LICENSE — *NOT* fit for any particular use or purpose — PROVIDED "AS IS"
#? See the bottom of this file for *IMPORTANT INFORMATION* — MIT LICENSE
#? =============================================================================≈
#? @author Benjamin Vincent Kasapoglu (LUXCIUM)
#? @copyright (c) 2020 - LUXCIUM (Benjamin Vincent Kasapoglu)
#? @license MIT
#? =============================================================================≈
#& Scientia es lux principium is a Trade Mark of Benjamin Vincent Kasapoglu
#& (c) & tm Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
#+ =============================================================================≈
#* AHMYZSH first entry point

export VERBOSA="${VERBOSA:-1}"

noop() { true; }

SCIENTIA_ES_LUX_PRINCIPIUM() { #+ - M A I N - B O O T S T R A P - +#
  export LOAD_ENV_COMPLETED='not yet'
  export ENVIRONNEMENT_LOADED='not yet'
  export LOGIN_ENV_LOADED='not yet'
  export INTERACTIVE_ENV_LOADED='not yet'

  # Shell detection using built-in variable (0 forks)
  if [[ -z "${ZSH_VERSION}" ]]; then
    return 1
  fi
  export IS_ZSH_=1

  # Reload guard: if already initialized, just reload config
  if [[ -n "${MAIN_INIT}" ]]; then
    load_all_config_and_settings_files 2>/dev/null
    is_interactive 2>/dev/null && echo "Reloaded alias files, functions, and configuration"
    return 0
  fi
  MAIN_INIT="start"

  # Load settings (locale, env vars, framework paths)
  load_ "${AHMYZSH}/MAIN_SETTINGS.sh" "MAIN_SETTINGS"

  # Load all configuration files (paths, layouts, functions, aliases, env)
  call_ load_all_config_and_settings_files

  # Source user environment file
  source_ "${HOME}/.env" || touch "${HOME}/.env"

  # Initialize runtimes (conditional on feature flags)
  call_ ahmyzsh_init_runtimes

  # Reset terminal formatting
  echo -en '\u001b[0m'

  # ── Non-interactive gate ──────────────────────────────────────────────────
  # Everything below here only runs for interactive shells.
  is_interactive || return 0

  # Activate prompt theme (Powerlevel10k)
  call_ activate_prompt

  # Load Oh My Zsh framework
  call_ load_oh_my_zsh

  # Load shell options
  call_ load_options_list
  call_ load_options_main

  # Load autosuggestions and autocomplete
  call_ load_autosuggest
  call_ load_autocomplete

  # Fix completion permissions (background, non-blocking)
  (compaudit 2>/dev/null | xargs chmod g-w,o-w 2>/dev/null) &

  # Compile zsh files only if needed (check sentinel)
  local sentinel="${AHMYZSH_CACHE}/.last_compile"
  if [[ ! -f "${sentinel}" ]] || \
     [[ $(find "${AHMYZSH}" -name '*.sh' -newer "${sentinel}" 2>/dev/null | head -1) ]]; then
    (zsh_compile_all_R 2>/dev/null; touch "${sentinel}") &
  fi

  # Set vi-mode keybindings (once)
  bindkey -v
  return 0
}

prompt_() {
  is_interactive && echo "${@}"
}

load_error_() {
  prompt_ "Error: '${*}' path can not be resolved"
  return 1
}

# Detect parent terminal (for informational purposes)
if command -v ps >/dev/null 2>&1; then
  my_term="$(ps -p "$PPID" -o comm= 2>/dev/null | awk '{print $1}')"
  export my_term
fi

# ·――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――· #
# !!―――――――――――――――――――――――――!!! SECURITY WARNING !!!―――――――――――――――――――――――――!! #
# !!                                                                          !! #
# !! AUDIT ANY FILES YOU IMPORT FROM THIS PROJECT PRIOR: DOWNLOAD/INSTALL/USE !! #
# !!    Please asses security risks by yourself before using this product.    !! #
# !!        You must report any security problemes or vulnerability on        !! #
# !!                  the issues page of the main repo site:                  !! #
# !!   [AHMYZSH project issues](https://github.com/Luxcium/ahmyzsh/issues/)   !! #
# !!                                                                          !! #
# !!―――――――――――――――――――――――――!!! SECURITY WARNING !!!―――――――――――――――――――――――――!! #
# ·――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――· #

# ============================================================================== ≈
# PROVIDED "AS IS" WITHOUT WARRANTY *NOT* fit for any particular use or purpose!
#
# MIT LICENSE
#
# Copyright © 2019-2020 Benjamin Vincent Kasapoglu (Luxcium)
# and contributors (https://github.com/Luxcium/ahmyzsh/contributors)
#
# Permission is hereby granted, free of charge, to all person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ALL KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ALL CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
# ==============================================================================≈
# Scientia es lux principium is a Trade Mark of Benjamin Vincent Kasapoglu
# (c) et tm - Benjamin Vincent Kasapoglu (Luxcium) 2017-2020
# ------------------------------------------------------------------------------~
