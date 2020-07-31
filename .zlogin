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
# source "$HOME/.config/sway/env"
