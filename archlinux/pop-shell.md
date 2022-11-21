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
