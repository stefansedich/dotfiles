discrete() {
  sudo prime-select nvidia
  killall Xorg
}

integrated() {
  sudo prime-select intel
  killall Xorg
}
