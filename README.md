# Dotfiles and basic setup

## 1. Installation instructions
- Clone this repository:

      git clone https://github.com/jsanjoseg/dotfiles ~/.dotfiles

- Run installation script:

      cd .dotfiles/ && ./install.sh

## 2. gnome-terminal profile
- To backup profile:

      dconf dump /org/gnome/terminal/legacy/profiles:/ > \
      ~/.dotfiles/.gnome-terminal-profile.dconf

- To restore profile (done with installation script):

      dconf load /org/gnome/terminal/legacy/profiles:/ < \
      ~/.dotfiles/.gnome-terminal-profile.dconf

## 3. VIM 8 and VIM plugins
In case VIM 8 is not installed in the system, it can be compiled
from sources and installed using:

      ~/.dotfiles/./install.sh -s vim

VimPlug and VIM plugins will be installed as well using this script.
