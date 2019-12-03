if [ -n "$ZSH_VERSION" ]; then
  ZSH=$HOME/.oh-my-zsh
  TERM="xterm-256color"
  ZSH_THEME="powerlevel9k/powerlevel9k"
  COMPLETION_WAITING_DOTS="true"

  zsh_custom_kube_ps1(){
    echo -n "$(_kube_ps1_symbol)$KUBE_PS1_SEPERATOR$KUBE_PS1_CONTEXT$KUBE_PS1_DIVIDER$KUBE_PS1_NAMESPACE"
  }

  # Powerlevel9k config
  POWERLEVEL9K_CUSTOM_KUBE_PS1='zsh_custom_kube_ps1'
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir custom_kube_ps1 aws vcs)
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)

  # oh-my-zsh
  plugins=(docker docker-compose git bundler rake ruby kubectl kube-ps1)

  test -e "${ZSH}/oh-my-zsh.sh" && source "${ZSH}/oh-my-zsh.sh"
  test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
fi
