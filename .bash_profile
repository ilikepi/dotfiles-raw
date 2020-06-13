
# 05/30/2011  bump histsize
# 03/15/2013  double histsize to 4K
export HISTSIZE=4096

# 05/30/2011  add hostname completion (from Gentoo)
export HOSTFILE=~/.completion_hosts
complete -o default -A hostname ssh
complete -o default -A hostname scp
complete -o default -A hostname sftp
complete -o default -A hostname lftp
complete -o default -A hostname host
complete -o default -A hostname rsync

# 06/09/2011  ls alias
alias ls='ls -FG'

# 03/10/2013  avoid annoying warnings
alias scp='scp -o "ClearAllForwardings yes"'

# 10/13/2013  OS X Wifi up/down
# 11/15/2015  Use device name in Yosemite
alias wifiup='networksetup -setairportpower en0 on'
alias wifidown='networksetup -setairportpower en0 off'

# 07/31/2012  consolidate some platform-specifc stuff
case `uname -s` in
  Darwin)
    # 06/12/2020  add path to binaries from primary PostgreSQL version
    PATH=$(brew --prefix postgresql@11)/bin/:${PATH}

    # 08/22/2016  opt-out of Homebrew analytics (complement to
    # `brew analytics off`)
    export HOMEBREW_NO_ANALYTICS=1

    # 02/06/2017  disable Homebrew auto-update
    export HOMEBREW_NO_AUTO_UPDATE=1

    # 09/11/2019  disable Homebrew auto-cleanup
    export HOMEBREW_NO_INSTALL_CLEANUP=1

    # 05/30/2011  git tab completion
    source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

    # 09/27/2011  make md5 more like md5sum
    alias md5='md5 -r'

    # 12/10/2013  restore some default window positions
    defaults write org.vim.MacVim MMTopLeftPoint -string '{64, 1414}'
    defaults write com.apple.Safari 'NSWindow Frame BrowserWindowFrame' \
                                    -string '203 87 1024 1091 0 0 1920 1178 '

    # 01/05/2014  chruby path is system-dependent
    CHRUBY_PATH=$(brew --prefix chruby)/share/chruby/chruby.sh
    ;;
  Linux)
    # 01/05/2014  chruby path is system-dependent
    # CHRUBY_PATH=???
    echo "DOH! Install chruby!"

    ;;
  *)
    # Hmm...
    echo "$0: ERROR - Unhandled OS"
    ;;
esac

# 05/19/2011  add ~/usr/bin
PATH=${HOME}/usr/bin:$PATH

# 06/09/2011  vi-mode (I swear, in a couple weeks, you'll thank me)
# 07/31/2012  deprecated by ~/.inputrc
#set -o vi

# 06/09/2011  straighten out all the Vim stuff
# 07/31/2012  use exec_vim.sh script
vim_cmd='exec_vim.sh -g'
vim_ro_opts="$vim_cmd -R -c 'set columns=171'"

export PSQL_EDITOR="$vim_cmd -f -c 'set filetype=sql'"
export BUNDLER_EDITOR="$vim_cmd"
export GIT_EDITOR="$vim_cmd -f -c 'set columns=85'"
export HOMEBREW_EDITOR="$vim_cmd -R"
export SVN_EDITOR="$vim_cmd -f"

# 11/28/2011  default Vim servername; used in 'gvimr' alias
export VIM_SERVER=VIM1

alias gvim="$vim_cmd"
alias gvimr="$vim_cmd --servername \$VIM_SERVER --remote"
alias gvim1="$vim_cmd -c 'set columns=85'"
alias gvim2="$vim_cmd -c 'set columns=171'"
alias gvim4="$vim_cmd -c 'set columns=343'"
alias vin="$vim_ro_opts --not-a-term -c 'set nowrap cc=' -"
alias vimdiff="$vim_ro_opts -c 'wincmd =' -d"

# 11/19/2009  rdoc interactive (deprecated)
export RI='-T -f ansi -w 78'

# 08/10/2012  reduce Cucumber's verbosity
export CUCUMBER_FORMAT=progress

# 07/31/2012  catch any changes we've made to PATH throughout.
export PATH

# 05/30/2011  load RVM last
# 01/05/2014  use chruby instead
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -n "$CHRUBY_PATH" ]] && [[ -s "$CHRUBY_PATH" ]] && . "$CHRUBY_PATH"
export RUBIES=(${HOME}/usr/rubies/*)
. "$(dirname "$CHRUBY_PATH")/auto.sh"
