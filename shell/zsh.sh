if [ -n "$ZSH_VERSION" ]; then
  ZSH=$HOME/.oh-my-zsh
  TERM="xterm-256color"
  ZSH_THEME="powerlevel10k/powerlevel10k"
  COMPLETION_WAITING_DOTS="true"

  zsh_custom_kube_ps1(){
    echo -n "$(_kube_ps1_symbol)$KUBE_PS1_SEPERATOR$KUBE_PS1_CONTEXT$KUBE_PS1_DIVIDER$KUBE_PS1_NAMESPACE"
  }

  # Powerlevel9k config
  POWERLEVEL9K_CUSTOM_KUBE_PS1='zsh_custom_kube_ps1'
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status aws custom_kube_ps1)

  test -e "${HOME}/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" && source "${HOME}/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
  test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
  
  eval "$(starship init zsh)"
fi
