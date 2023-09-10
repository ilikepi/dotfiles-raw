#
# Configure login shells.
#

### PATH

# Ensure entries in $PATH are unique.
typeset -U path

# Prepend entries for keg-only Homebrew formulae bin directories.
path=(/opt/homebrew/opt/postgresql@11/bin $path)

# Prepend entries for Homebrew bin directories.
path=(/opt/homebrew/bin /opt/homebrew/sbin $path)

# Prepend entries for user-specific bin directories.
path=(~/bin ~/usr/bin $path)
