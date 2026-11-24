# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/j1c/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls="lsd --group-dirs first"
alias cat="bat"

# zsh themes
source "$HOME/.zsh/spaceship-prompt/spaceship.zsh"