## Dotfiles for tiling window manager setup

### Symlink dotfiles to home directory
* Install GNU stow, e.g., `apt install stow`
* Navigate to the root of this git repository
* Run
```
stow . -t ~
```
while being in 
### Required packages
* For regular X11/i3 setup
	* `i3`
	* `i3lock`
	* `polybar`
	* `dunst`
	* `xautolock`
	* `autorandr`
	* `redshift`
	* `geoclue`
* For wayland/sway setup
	* `sway`
	* `waybar`
* Fonts
	* `San Francisco OTF`
	* `Source Code Pro OTF`
	* `Font Awesome 5`
	* `Material Icons`
