# Dotfiles for tiling window manager setup

## Symlink dotfiles to home directory
* Install GNU stow, e.g., `apt install stow`
* Navigate to the root of this git repository
* Run `stow . -t ~`

## Required packages
### For regular X11/i3 setup (install via package manager)
#### Desktop
* `i3`
* `i3lock` (installed with `i3` using apt)
* `dunst` (installed with `i3` using apt)
* `autorandr` (Get from [github](https://github.com/phillipberndt/autorandr) then run `make install-launcher`)
* `redshift`
* `rofi`
* `picom`
* `alacritty`
* `py3status` (installed via `pip`)
* `autotiliing`


#### Optional desktop utilities
* `nm-applet` (Managing network configuration from tray)
* `blueman` (Manage bluetooth connections with tray applet)
* `copyq` (Clipboard manager)

#### Theming
First install the adwaita themes for QT and GTK applications from apt.
* QT application theme: `adwaita-qt`
* Icon theme: `breeze-icon-theme`
* Cursor theme: `breeze-cursor-theme`
  
Set themes for GTK and QT with the following packages
* `lxappearance`
* `qt5ct` (Need to set environment variable `export QT_QPA_PLATFORMTHEME=qt5ct`)

#### Fonts
* Monospace: `fonts-firacode`
* Main: `fonts-roboto`
* `fonts-font-awesome`

#### Keyboard setup
Switching between keyboard layouts with pressing both shifts and swapping ESC and Caps Lock
```
localectl set-x11-keymap us,de "" "" escape:swapcaps,grp:shifts_toggle
```
Alternatively exchange `caps:escape` with `caps:super` to get a additional super key inplace of caps lock. Use together with `xcape` to get combined functionality of escape on single press and super when pressed together with other key.

### Other tools
* [fd](https://github.com/sharkdp/fd) (Simple alternative to `find`)
* [ripgrep](https://github.com/BurntSushi/ripgrep) (Search regex patterns in directory)
* [fzf](https://github.com/junegunn/fzf) (Fuzzy finder)
* [Zinit](https://github.com/zdharma/zinit) (Plugin manager for zsh)
* [vim-plug](https://github.com/junegunn/vim-plug) (Plugin manager for vim)
* [TPM](https://github.com/tmux-plugins/tpm) (Pugin manager for tmux)

---

### For wayland/sway setup
Currently not really using it because of xwayland issues with scaling.
* `sway`
* `waybar`
* `kanshi`
* `wdisplays`
* `mako`
* `autotiling` (via python)
* `swayidle`
* `swaylock`
* `rofi`
* `alacritty`
* `slurp`
* `grim`
* `swappy`
* `clipman`

