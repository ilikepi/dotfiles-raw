#
# Configure login shells.
#

### PATH

# Ensure entries in $PATH are unique.
typeset -U path

# Add Homebrew paths if necessary.
if [[ -r "${HOME}/.zprofile.homebrew" ]]; then
  source "${HOME}/.zprofile.homebrew"
fi

# Prepend entries for user-specific bin directories.
path=(~/bin ~/usr/bin $path)
