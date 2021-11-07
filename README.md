# dotfiles

Lightwight dotfiles no magic included.

No fancy `install.sh` destroying everything ;)
Take 5 mins, run the commands manually, know what you did.

**Happy hacking! :dancer:**

## Install

### Brew

```bash
brew install asdf     # https://asdf-vm.com/guide/introduction.html
brew install cheat    # live cheat cheat
brew install curl
brew install direnv   # change directory environment vars on `cd`
brew install git
brew install ripgrep  # very fast in-file search used by fzf for vim
brew install starship # https://starship.rs/
brew install tmux

# FiraCode font for Nerds
brew tap homebrew/cask-fonts \
  && brew install --cask font-fira-code-nerd-font
```

### Curl

```bash
# vim-plug neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# fisher
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# blade (Liferay)
curl -L https://raw.githubusercontent.com/liferay/liferay-blade-cli/master/cli/installers/local | sh
```

### Asdf

```bash
asdf plugin add neovim
asdf install neovim stable
asdf global neovim stable

# https://github.com/halcyon/asdf-java
# Checkout the section for OSX
asdf plugin-add java https://github.com/halcyon/asdf-java.git

# https://github.com/asdf-vm/asdf-nodejs
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
```

## Configure

### Backup

```bash
# Make Backup Folder
mkdir -p ~/.dotfiles-backup
mkdir -p ~/.dotfiles-backup/config/fish
mkdir -p ~/.dotfiles-backup/config/nvim

# Backup nvim
cp ~/.config/nvim/init.vim ~/.dotfiles-backup/config/nvim/
cp ~/.config/nvim/coc-settings.json ~/.dotfiles-backup/config/nvim/
cp -r ~/.config/nvim/spell/ ~/.dotfiles-backup/config/nvim/spell/
cp -r ~/.config/nvim/UltiSnips/ ~/.dotfiles-backup/config/nvim/UltiSnips/

# Backup starship
cp ~/.config/starship.toml ~/.dotfiles-backup/config

# Backup fish
cp ~/.config/fish/config.fish ~/.dotfiles-backup/config/fish
cp ~/.config/fish/fish_plugins ~/.dotfiles-backup/config/fish

# Backup tmux
cp ~/.tmux.conf ~/.dotfiles-backup
```

### Symlink

**Run the scripts in this dotfiles repo directory!**

```bash
# nvim
ln -sf (pwd)/config/nvim/init.vim ~/.config/nvim/init.vim
ln -sf (pwd)/config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
ln -sf (pwd)/config/nvim/spell/de.utf-8.add ~/.config/nvim/spell/de.utf-8.add
ln -sf (pwd)/config/nvim/spell/de.utf-8.spl ~/.config/nvim/spell/de.utf-8.spl
ln -sf (pwd)/config/nvim/spell/de.utf-8.add.spl ~/.config/nvim/spell/de.utf-8.add.spl
ln -sf (pwd)/config/nvim/spell/en.utf-8.spl ~/.config/nvim/spell/en.utf-8.spl
ln -sf (pwd)/config/nvim/UltiSnips/markdown.snippets ~/.config/nvim/UltiSnips/markdown.snippets
ln -sf (pwd)/config/nvim/UltiSnips/javascript.snippets ~/.config/nvim/UltiSnips/javascript.snippets

# starship
ln -sf (pwd)/config/starship.toml ~/.config/starship.toml

# fish
ln -sf (pwd)/config/fish/config.fish ~/.config/fish/config.fish
ln -sf (pwd)/config/fish/fish_plugins ~/.config/fish/fish_plugins

# tmux
ln -sf (pwd)/tmux.conf ~/.tmux.conf
```
