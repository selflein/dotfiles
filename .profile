# DPMS power management (standby, suspend, poweroff)
# `xset -dpms` to deactivate, `xset +dpms` to activate
xset dpms 600 7200 0
xset -dpms

# Disable screen saver
xset s off

# Keyboard autorepeat delay (first value) and rate (second value)
xset r rate 300 30 

# Disable bell
xset b off

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
        export SSH_AUTH_SOCK
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export ZDOTDIR=~/.config/zsh
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORMTHEME=qt5ct
