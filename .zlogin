if [ -n "$DESKTOP_SESSION" ];then
        eval $(gnome-keyring-daemon --start)
            export SSH_AUTH_SOCK
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export QT_QPA_PLATFORMTHEME=qt5ct
export _JAVA_AWT_WM_NONREPARENTING=1

if [ "${XDG_SESSION_TYPE}" = "wayland" ]; then
    if [ -f "$HOME/.config/sway/env" ]; then
        source "$HOME/.config/sway/env"
    fi
fi
