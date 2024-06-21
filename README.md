# Hydro's dotfiles

## Installation

Please review the following packages before installing:

```bash
yay -S --needed chezmoi \
  hyprland river sway \
  polkit-kde-agent \
  fzf fish less bat eza \
  foot swayosd-git swayidle wl-clipboard \
  waybar-cava hyprpaper swaync \
  starship \
  swaylock fortune-mod \
  qogir-icon-theme \
  lexend-fonts-git ttf-firacode-nerd \
  nnn-nerd \
  git git-lfs lazygit
```

Setup `git-lfs` to download large objects (wallpapers etc.):

```
git lfs install
```

Use `chezmoi` to apply the config to your home directory:

```
chezmoi init https://github.com/hydroxycarbamide/dotfiles
chezmoi cd && git lfs pull # if you didn't run `git lfs install`
chezmoi apply
```

