export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
export XDG_CURRENT_DESKTOP=bspwm
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color
export EDITOR=nvim
export GTK_THEME=Adwaita:dark
if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
     XDG_SESSION_TYPE=x11 GDK_BACKEND=x11 exec startx &> xlog
fi

#if [ "$(tty)" = "/dev/tty1" ]; then
#    rm -rf /tmp/startx.log
#    startx &> /tmp/startx.log
#    clear
#fi
