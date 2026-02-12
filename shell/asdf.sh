export ASDF_DATA_DIR="$HOME/.asdf"
export PATH="$ASDF_DATA_DIR/shims:$PATH"

fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
autoload -Uz compinit && compinit
