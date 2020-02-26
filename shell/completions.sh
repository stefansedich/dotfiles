for completion in ~/.completions.d/* ; do
  [ -f "$completion" ] && . "$completion"
done
