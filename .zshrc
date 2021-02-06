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

# Load asdf.
#
# This puts all the asdf managed runtimes on the path.
#
# Should the path below change then run `brew --prefix asdf` to get the correct path
# I don't do that inline here as it's quite slow and I want my shell to start quickly.
# shellcheck disable=SC1091
. /usr/local/opt/asdf/asdf.sh

# Activate starship
eval "$(starship init zsh)"
