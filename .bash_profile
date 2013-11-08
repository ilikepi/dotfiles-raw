
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
alias ls='ls -F'

# 03/10/2013  avoid annoying warnings
alias scp='scp -o "ClearAllForwardings yes"'

# 10/13/2013  OS X Wifi up/down
alias wifiup='networksetup -setairportpower airport on'
alias wifidown='networksetup -setairportpower airport off'

# 07/31/2012  consolidate some platform-specifc stuff
case `uname -s` in
  Darwin)
    # 05/30/2011  add ~/usr/brew/bin
    PATH=${HOME}/usr/brew/bin:$PATH

    # 05/30/2011  git tab completion
    source ${HOME}/usr/brew/etc/bash_completion.d/git-completion.bash

    # 09/27/2011  make md5 more like md5sum
    alias md5='md5 -r'

    ;;
  Linux)
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
export GIT_EDITOR="$vim_cmd -f"
export SVN_EDITOR="$vim_cmd -f"

# 11/28/2011  default Vim servername; used in 'gvimr' alias
export VIM_SERVER=VIM1

alias gvim="$vim_cmd"
alias gvimr="$vim_cmd --servername \$VIM_SERVER --remote"
alias vin="$vim_ro_opts -c 'set nowrap cc=' -"
alias vimdiff="$vim_ro_opts -c 'wincmd =' -d"

# 11/19/2009  rdoc interactive (deprecated)
export RI='-T -f ansi -w 78'

# 08/10/2012  reduce Cucumber's verbosity
export CUCUMBER_FORMAT=progress

# 07/31/2012  catch any changes we've made to PATH throughout.
export PATH

# 05/30/2011  load RVM last
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
