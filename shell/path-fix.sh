# Gnome terminal will expand our ~/Development symlink
# to the real path when opening a new tab. This will handle
# this case by executing a cd back to ~/Development if we
# open a new tab and the symlink gets expanded.
cd ${PWD/\/mnt\/data\/Development/$HOME\/Development}
