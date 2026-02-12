export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$HOME/.poetry/bin:$PATH"

lazyload pyenv -- 'eval "$(pyenv init -)"'
