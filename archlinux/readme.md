
# Install graphics card software

```
sudo mhwd -a pci nonfree 0300
reboot
```

- https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-manjaro-linux

# Install Gnome latest version

```
sudo pacman -Suy
sudo pacman -S gnome
```

Outside graphics (Alt-Ctrl-F4):

```
sudo systemctl disable lightdm.service
sudo systemctl enable gdm.service
```

- https://wiki.archlinux.org/title/GNOME

# Install basic programs


```
sudo pacman -S git base-devel
```

- Vim
- Emacs
- Terminator
- Zshell
- PostgreSQL
- MySQL
- Npm
- NodeJS
- docker
- docker-compose
- kubectl
- k9s
- aws
- terraform
- OBS Studio
- dbeaver

```
sudo pacman -S vim emacs terminator zsh postgresql mysql npm docker docker-compose aws-cli obs-studio terraform
```

## Vscode

```
cd ~
git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg
sudo pacman -U <pack-name>
```

## gcloud

```
cd ~
git clone https://aur.archlinux.org/google-cloud-sdk.git
cd visual-studio-code-bin
makepkg
sudo pacman -U <pack-name>
```

## Using Gnome Software

- Slack
- Zoom
- postman
- google-chrome

On the search bar, search for install. Opening the GNOME installer, install each one of the items.

## configure Docker

```
reboot
```
- TODO:


## TODO

# Workspace Management

## Tweaks
## Workspace Matrix
## Pop shell

- [pop-shell](./pop-shell.md)

## Oh-my-Zsh

- [oh-my-zsh](./oh-my-zsh.md)

## Vscode extensions

- Pylance
- Python
- Jupyter
- Gitlens
- Docker
- Text tables
- Editorconfig
- Terraform
- Org mode
- Markdown
