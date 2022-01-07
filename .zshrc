#
# Configure interactive shells.
#

### Basic settings

# Custom prompt (hostname:dir username% )
PROMPT='%m:%1~ %n%# '


### ZLE settings

# Use viins mode.
bindkey -v

# Use bash-style reverse history search.
# Default:
#   bindkey -M viins '^R' redisplay
bindkey -M viins '^R' history-incremental-search-backward

# When navigating history, keep the cursor at the beginning of the line.
# Default:
#   bindkey -M vicmd k up-line-or-history
#   bindkey -M vicmd k down-line-or-history
bindkey -M vicmd k vi-up-line-or-history
bindkey -M vicmd j vi-down-line-or-history


### Aliases

# 06/09/2011  ls alias
alias ls='ls -FG'

# 03/10/2013  avoid annoying warnings
alias scp='scp -o "ClearAllForwardings yes"'


### History options

# Increase the size of the History buffer.
HISTSIZE=4096
SAVEHIST=4096

# Include timestamps.
setopt EXTENDED_HISTORY

# Record to HISTFILE at command completion rather than at shell termination.
setopt INC_APPEND_HISTORY_TIME


### Completion

# Allow liberal partial pathname completion.
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix 

# Initialize the completion system.
autoload -Uz compinit
compinit
