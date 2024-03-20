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
path=("${HOME}/bin" "${HOME}/usr/bin" $path)

# vim:sw=2 ts=2 et filetype=zsh
