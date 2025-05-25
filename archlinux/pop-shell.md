# Install

Install it using extension.gnome or directly from repo:

- https://github.com/pop-os/shell#installation
- Before doing the make install, please list all gsettings for backup
  - gsettings list-recursively > current_gsettings.txt
- Install pop-os tiling
  - make local-install

It is going to overwrite the default keybindings. Then, apply the keybindings again:

```sh
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Control><Shift><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Control><Shift><Alt>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Control><Shift><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Control><Shift><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Control><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Control><Alt>Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Control><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Control><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Control><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Control><Super>Down']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q', '<Alt>F4', '<Control><Shift>d']"
```

```sh
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Control><Alt>u']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Control><Alt>i']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Control><Alt>o']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Control><Alt>p']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Control><Alt>j']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Control><Alt>k']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Control><Alt>l']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Control><Alt>semicolon']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Control><Alt>m']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "['<Control><Alt>comma']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-11 "['<Control><Alt>period']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-12 "['<Control><Alt>slash']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Control><Shift><Alt>u']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Control><Shift><Alt>i']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Control><Shift><Alt>o']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Control><Shift><Alt>p']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Control><Shift><Alt>j']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Control><Shift><Alt>k']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Control><Shift><Alt>l']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Control><Shift><Alt>semicolon']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Control><Shift><Alt>m']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "['<Control><Shift><Alt>comma']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-11 "['<Control><Shift><Alt>period']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-12 "['<Control><Shift><Alt>slash']"
```
