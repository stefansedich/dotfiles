export ASDF_DATA_DIR="$HOME/.asdf"
export PATH="$ASDF_DATA_DIR/shims:$PATH"

# Completion paths
ASDF_COMPLETIONS_DIR=${ASDF_DATA_DIR:-$HOME/.asdf}/completions
[[ -d $ASDF_COMPLETIONS_DIR ]] && fpath=($ASDF_COMPLETIONS_DIR $fpath)

# Cache location
ZCOMPDUMP=${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump

autoload -Uz compinit

# Rebuild cache if missing or older than any completion file
if [[ ! -f $ZCOMPDUMP || $ZCOMPDUMP -ot ${(j: :)fpath} ]]; then
  compinit -d "$ZCOMPDUMP"
else
  compinit -C -d "$ZCOMPDUMP"
fi
