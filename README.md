# yosa12978 dotfiles

![Desktop](desktop.png)

## Installing dependencies

### Arch Linux

(You can use basically any linux distro but since I mainly use Arch linux on desktop I wrote commands only for Arch)

Basic packages

```bash
sudo pacman -S zsh alacritty neovim stow brightnessctl alsa-utils neofetch ly
sudo systemctl enable ly # enabling ly login manager (https://github.com/fairyglade/ly)
```

If you want to use i3 and X11

```bash
sudo pacman -S i3-wm dmenu polybar picom xorg-xinput xautolock xorg-xauth nitrogen flameshot slock
```

If you want to use sway and Wayland

```bash
sudo pacman -S sway swaylock swaybg swayidle wmenu waybar
```


After doing that install [oh-my-zsh](https://ohmyz.sh/#install)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## After installing dependencies

Clone this repo

```bash
git clone https://github.com/yosa12978/dotfiles.git
```

goto ```dotfiles``` directory and use

```bash
stow --adopt .
git restore .
```

*** Warning: This command will delete your same dotfiles directories and replace them with symlinks ***


To update dotfiles use ```stow .```

You can use dotfiles without stow. Just replace files you want to use in your .config dir with mine 
