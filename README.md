# ~/.dotfiles

## Features

- Window Manager • Yabai
- Shell • Zsh
- Terminal • Warp
- Prompt • Starship
- Menu Bar • Sketchybar
- App Launcher • Raycast
- IDE • Neovim & VSCode

## Installation

First, install Nix on your system.

```sh
sh <(curl -L https://nixos.org/nix/install)
```

Secondly, bootstrap the configuration with the following command.

```sh
nix-shell --packages git --command "$(curl -fsSL https://raw.githubusercontent.com/0xa48rx394r83e9/dotfiles/master/bin/bootstrap.sh)"
```

Apply the configuration with the following command.

```sh
~/.dotfiles/bin/sync.sh
```

