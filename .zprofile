#
# Configure login shells.
#

### PATH

# Ensure entries in $PATH are unique.
typeset -U path

# Prepend entries for software installed but not linked in Homebrew.
if type brew &> /dev/null
then
  path=($(brew --prefix postgresql@11)/bin $path)
fi

# Prepend entries for user-specific bin directories.
path=(~/bin ~/usr/bin $path)


### App-specific settings for macOS.

if [[ $(uname -s) == 'Darwin' ]]
then

  # 12/10/2013  restore some default window positions
  defaults write org.vim.MacVim MMTopLeftPoint -string '{64, 1414}'
  defaults write com.apple.Safari 'NSWindow Frame BrowserWindowFrame' \
                                  -string '203 87 1024 1091 0 0 1920 1178 '

fi
