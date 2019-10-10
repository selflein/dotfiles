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
* `xautolock`
* `autorandr`
* `redshift`
* `rofi`
* `compton`
* `konsole`

#### Optional desktop utilities
* `xfce4-power-manager` (For shutting of screen and suspending after some time)
* `nm-applet` (Managing network configuration from tray)
* `pnmixer` (Volume control from tray)
* `gnome-flashback` (Integrates gnome functionality such as keyboard layout applet)   
  Run gnome settings with: `XDG_CURRENT_DESKTOP=GNOME gnome-control-center`

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

### Install fzf
**Not necessary anymore since this is handled by vim-plug**
Run the following commands:
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
```
The project website can be found [here](https://github.com/junegunn/fzf).
Update with `cd ~/.fzf && git pull && ./install --all`

#### zsh shell with Zplugin
Install zsh shell first.
Then, install Zplugin using `sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"`. When the terminal is loaded packages specified in `.zshrc` should be installed.   
See the [Zplugin](https://github.com/zdharma/zplugin) documentation for additional information.

#### Vim configuration using vim-plug
* Install vim-plug
   ```
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```
* Run `:PlugInstall` to install plugins specified in `.vimrc`

For more information see [vim-plug documentation](https://github.com/junegunn/vim-plug).

#### Environment variables
Environment variables are contained in the `pam_environment` file. Format is `{key}={value}`.

---

### For wayland/sway setup
Currently not really using it because of xwayland issues with scaling.
* `sway`
* `waybar`
