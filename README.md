# Linux startup

INTRO

Tested on Ubuntu 20.04

## Upgrade and update both apt and apt-get

```
sudo apt upgrade
sudo apt update
sudo apt-get upgrade
sudo apt-get update
```

Also update `Ubuntu Software` app.

## Install essential programs

- Git
- Vim
- Emacs
- Terminator
- Zshell
- Python3 dev tools
- PostgreSQL
- MySQL
- Vscode

- docker
- docker-compose
- kubectl
- terraform
- gcloud
- aws

- OBS Studio
- Slack
- Zulip
- Zoom

### Through apt

```sh
sudo apt install -y \
      git \
      vim \
      emacs \
      terminator \
      zsh \
      postgresql postgresql-contrib \
      mysql-server \
      obs-studio
```


[Python](https://devguide.python.org/setup/):

```sh
sudo apt install pkg-config python3 \
      build-essential gdb lcov pkg-config \
      libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev \
      libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev \
      lzma lzma-dev tk-dev uuid-dev zlib1g-dev
```

[Docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04):

```sh
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install docker-ce

# Run Docker without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
# You will need at this point to restart the computer, again.
```

[Docker Compose](https://docs.docker.com/compose/install/)

```sh
sudo curl -L "https://github.com/docker/compose/releases/download/v1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

[Vs Code](https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-20-04/)

```
sudo snap install --classic code
```

[Slack](https://linuxize.com/post/how-to-install-slack-on-ubuntu-20-04/)

```sh
sudo snap install slack --classic
```

[Zulip](https://zulip.com/apps/)

```sh
# Install the AppImage then run this command
sudo mv Zulip-5.8.1-x86_64.AppImage /usr/lib/zulip
```

[Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

```sh
# Make sure to remove the remaining files
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

[Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

```sh
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

```

[Google Cloud CLI](https://cloud.google.com/sdk/docs/install)

```sh
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-368.0.0-linux-x86_64.tar.gz
tar xzf google-cloud-sdk-368.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh
```

- Configure gcloud:

```sh
gcloud auth login
gcloud config set project coresystem-171219
gcloud config set compute/zone us-central1-a
gcloud config set compute/region us-central1
```

- Plus, update the Cielo24 (this case) credentials using the customized functions:

```
gcloud container clusters get-credentials core-cluster && mv ~/.kube/config ~/.kube/cielo-config/core-cluster.config
gcloud container clusters get-credentials prod && mv ~/.kube/config ~/.kube/cielo-config/gcp-prod.config
gcloud container clusters get-credentials c24-services --region us-central1 && mv ~/.kube/config ~/.kube/cielo-config/c24-services.config
gcloud container clusters get-credentials databases && mv ~/.kube/config ~/.kube/cielo-config/databases.config
gcloud container clusters get-credentials dev && mv ~/.kube/config ~/.kube/cielo-config/dev.config
gcloud container clusters get-credentials us-central1-c24-airflow-ec701bba-gke && mv ~/.kube/config ~/.kube/cielo-config/us-central1-c24-airflow-ec701bba-gke.config
```

[AWS](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

```sh
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

[Redis](https://redis.io/download)

```sh
# Make sure to remove the remaining files
tar xzf redis-6.2.6.tar.gz
cd redis-6.2.6
make
sudo mv src/redis-cli /usr/bin
```
## Workspace Management

- Workspaces for using the fancy tool of sliding left+right+bottom+top
- TODO: find one for multiple screens.

Install gnome Tweaks

```
sudo apt install gnome-shell-extensions
sudo apt install gnome-tweaks
sudo apt install gnome-tweak-tool
```

Using the website, install and enable `Workspace Matrix`:

https://extensions.gnome.org/extension/

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

## Zshell plugins

### Install Oh-My-Zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Plugins

Use these plugins

```sh
plugins=(
    git
    colored-man-pages
    zsh-completions
    zsh-autosuggestions
    pyenv
    dotenv
)
```

You need to install these:

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
```

### For Syntax highlighting

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

### Theme [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

Install this Theme. and the following fonts: https://github.com/romkatv/powerlevel10k/issues/310

- [MesloLGS NF Regular.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf)
- [MesloLGS NF Bold.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf)
- [MesloLGS NF Italic.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf)
- [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf)

Add later on Terminator layout.

## Terminator Layouts

See at [utils](./utils/terminator.config) The terminator config

## Add utils sources

See at [utils](./utils/) folder all the shell sources containing the util functions.
