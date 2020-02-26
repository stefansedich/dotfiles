for completion in ~/.completions/* ; do
  [ -f "$completion" ] && . "$completion"
done
