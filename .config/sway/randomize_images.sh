#!/bin/sh

ln -sf ~/.config/backgrounds/$(ls ~/.config/backgrounds | shuf | head -1) ~/.config/background
swaymsg reload

ln -sf ~/.config/lockscreens/$(ls ~/.config/lockscreens | shuf | head -1) ~/.config/lockscreen
