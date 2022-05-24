# Nvidia settings
xrandr --setproviderouputsource modesetting NVIDIA-0
xrandr --auto

export EDITOR=vim
export TERMINAL=alacritty
exec /sbin/qtile start
