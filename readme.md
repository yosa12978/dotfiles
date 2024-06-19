# yosa12978 dotfiles

## Installing dependencies


### Arch Linux

```bash
sudo pacman -S zsh i3 dmenu polybar alacritty fastfetch picom neovim xorg-xinput xautolock stow nitrogen rofi lxappearance brightnessctl
```

### Debian

Install fastfetch from their github releases: [fastfetch github releases](https://github.com/fastfetch-cli/fastfetch/releases)

```bash
sudo apt install zsh i3 dmenu polybar alacritty picom neovim xinput xautolock stow nitrogen rofi lxappearance brightnessctl
```


### Fedora

```bash
sudo dnf install zsh i3 dmenu i3-gaps polybar alacritty fastfetch picom neovim xinput xautolock stow nitrogen lxappearance rofi brightnessctl
```


After doing that install [oh-my-zsh](https://ohmyz.sh/#install)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Post installation

Clone this repo

```bash
git clone https://github.com/yosa12978/dotfiles.git
```

goto ```dotfiles``` directory and use

```bash
stow --adopt .
git restore .
```
! Warning: This command will delete your same dotfiles directories and replace them with symlinks


To update dotfiles use ```stow .```

You can use dotfiles without stow. Just replace files you want to use in your .config dir with mine 
