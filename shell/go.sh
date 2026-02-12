export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"

lazyload goenv -- 'eval "$(goenv init -)"'

export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
