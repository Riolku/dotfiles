# Dotfiles

## Installing

```sh
cp -auvT .config ~/.config
sudo cp -auvT etc /etc
```

Note that this doesn't delete existing files.

## Changes

This is an incomplete list of the changes I made to various tools.

### Sway

Mostly same as the default configuration, added power management commands, hide the bar by default, hide edge borders, add keyboard layouts...

### tofi

Styled it until it looked almost identically to dmenu.

### Waybar

Deleted stuff from the default config until I was happy. Got too lazy to style it.

### Vim

Add a place for system ctags and set sane indenting defaults.

### foot

Modified the Ubuntu theme until it looked nice with Vim & fish.

### Background / Lockscreen

I really like the Bookworm Emerald images, so I used those.

### GTK / Qt Themes

Adwaita is really nice, especially since I come from gnome.

Also, `etc` contains an environment file to use qt5ct themes.

### Fish

Use a more informative prompt with Git info, add keybinds to avoid arrow keys, use VI keybindings, add VENV management commands.
