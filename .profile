export ZDOTDIR=~/.config/zsh
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCALE_FACTOR=1
export GDK_SCALE=1
export QT_QPA_PLATFORMTHEME=qt5ct

export MOZ_X11_EGL=1
echo "Xft.dpi: 144" | xrdb -merge -

# DPMS power management (standby, suspend, poweroff)
# `xset -dpms` to deactivate, `xset +dpms` to activate
xset dpms 600 7200 0

# Disable screen saver
xset s off

# Keyboard autorepeat delay (first value) and rate (second value)
xset r rate 200 40 

# Disable bell
xset b off


if [ -n "$DESKTOP_SESSION" ];then
    export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

