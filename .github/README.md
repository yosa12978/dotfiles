# My dotfiles

![Desktop](desktop.webp)

## Installing dependencies

### Arch Linux

Basic packages

```bash
sudo pacman -S zsh alacritty neovim stow brightnessctl alsa-utils fastfetch ly tmux fzf bat tealdeer
sudo systemctl enable ly # enabling ly login manager (https://github.com/fairyglade/ly)
```

Install i3 dependencies

```bash
sudo pacman -S i3-wm dmenu polybar picom xorg-xinput xautolock xorg-xauth nitrogen flameshot slock
```

After doing that install [oh-my-zsh](https://ohmyz.sh/#install)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Installing dotfiles

Clone this repo and replace your configs with my dotfiles

```bash
git clone https://github.com/yosa12978/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow --adopt .
git restore .
```
