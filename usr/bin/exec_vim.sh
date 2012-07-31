#!/usr/bin/env sh

# Abstract the execution of vim so that various dotfiles can be shared across
# different platforms.

case `uname -s` in
  Darwin)
    vim_cmd='/Applications/MacVim.app/Contents/MacOS/Vim'
    ;;
  Linux)
    vim_cmd='/usr/bin/vim'
    ;;
  *)
    echo "$0: ERROR - unhandled OS"
    exit 1
    ;;
esac

exec $vim_cmd "$@"
