# Install

https://wiki.archlinux.org/title/installation_guide

https://github.com/archlinux/archinstall

## Disable alt-tilda

https://superuser.com/questions/1338522/disable-alt-keyboard-shortcut-in-linux

## Disable middle click paste
```
cp -r sxhkd ~/.config
sudo pacman -Y xsel sxhkd
```
And append into ~/.profile
```
sxhdk & disown
```

## TODO:
https://www.chezmoi.io/
