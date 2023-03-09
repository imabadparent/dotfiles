# Source git prompt feature
source $ZDOTDIR/zsh-git-prompt/zshrc.sh
# Source custom configuration
source $ZDOTDIR/zshconf
# Source custom aliases
source $ZDOTDIR/zshals
# Source plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh

# Run autostart commands when new shell opens
neofetch --disable gpu de wm shell font
