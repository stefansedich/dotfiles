ZSH=$HOME/.oh-my-zsh
TERM="xterm-256color"
ZSH_THEME="powerlevel9k/powerlevel9k"
COMPLETION_WAITING_DOTS="true"

# Powerlevel9k config
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)

# oh-my-zsh
plugins=(docker docker-compose git bundler osx rake ruby)

test -e "${ZSH}/oh-my-zsh.sh" && source "${ZSH}/oh-my-zsh.sh"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
