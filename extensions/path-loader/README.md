<!-- extensions/path-loader/README.md -->

# PATH and runtime loader placeholder

The base currently adds only existing user-local and AhMyZSH command
directories with Zsh's unique `path` array. It does not initialize FNM, Conda,
rbenv, Cargo, CUDA, mise, direnv or project roots.

The future extension will declare entries as data, verify capabilities, assign
one owner per runtime and keep project environments outside global boot. It
must work independently of OMZ, prompt, tmux and REPL modules.
