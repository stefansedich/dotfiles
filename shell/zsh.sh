if [ -n "$ZSH_VERSION" ]; then  
  test -e "$HOME/.zsh/completion.zsh" && source "$HOME/.zsh/completion.zsh"
  test -e "$HOME/.zsh/history.zsh" && source "$HOME/.zsh/history.zsh"
  test -e "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" && source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
  test -e "$HOME/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh" && source "$HOME/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh"
  test -e "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" && source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  test -e "$HOME/.iterm2_shell_integration.zsh" && source "$HOME/.iterm2_shell_integration.zsh"
  
  # Setup key bindings
  bindkey "$terminfo[kcuu1]" history-substring-search-up
  bindkey "$terminfo[kcud1]" history-substring-search-down
  
  # enable color support of ls and also add handy aliases
  if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
  fi

  # some more ls aliases
  alias ll='ls -alF'
  alias la='ls -A'
  alias l='ls -CF'
  
  eval "$(starship init zsh)"
fi
