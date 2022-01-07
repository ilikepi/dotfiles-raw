#
# Configure login shells.
#

### PATH

# Ensure entries in $PATH are unique.
typeset -U path

# Prepend entries for user-specific bin directories.
path=(~/bin ~/usr/bin $path)
