# shellcheck shell=bash
# Shellcheck doesn't support zsh for now, so we'll pretend it's bash

# shellcheck disable=SC1090
# It's okay that shellcheck can't read ~/.env, we don't need it to.
[ -f ~/.env ] && source ~/.env

# Put all the 3rd party completions scripts on my function path and enable
# tab-completion.
# shellcheck disable=SC2206
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit && compinit

eval "$(starship init zsh)"
