if [ -n "$ZSH_VERSION" ]; then  
  test -e "$HOME/.zsh/completion.zsh" && source "$HOME/.zsh/completion.zsh"
  test -e "$HOME/.zsh/history.zsh" && source "$HOME/.zsh/history.zsh"
  test -e "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" && source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
  test -e "$HOME/.zsh/zsh-autosuggestions/zsh-history-substring-search.zsh" && source "$HOME/.zsh/zsh-autosuggestions/zsh-history-substring-search.zsh"
  test -e "$HOME/.iterm2_shell_integration.zsh" && source "$HOME/.iterm2_shell_integration.zsh"
  
  # Setup key bindings
  bindkey "^[[A" history-beginning-search-backward
  bindkey "^[[B" history-beginning-search-forward
  
  eval "$(starship init zsh)"
fi
