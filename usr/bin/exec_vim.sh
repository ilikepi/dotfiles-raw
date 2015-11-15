#!/usr/bin/env sh

# Abstract the execution of vim so that various dotfiles can be shared across
# different platforms.

case `uname -s` in
  Darwin)
    if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
      vim_cmd='/Applications/MacVim.app/Contents/MacOS/Vim'
    elif [ -f "${HOME}/Applications/MacVim.app/Contents/MacOS/Vim" ]; then
      vim_cmd="${HOME}/Applications/MacVim.app/Contents/MacOS/Vim"
    fi
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
