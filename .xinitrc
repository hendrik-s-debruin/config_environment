# Nvidia settings
xrandr --setproviderouputsource modesetting NVIDIA-0
xrandr --auto

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# multi-language input
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

export EDITOR=vim
export TERMINAL=alacritty
exec i3
