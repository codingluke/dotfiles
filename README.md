# dotfiles
lightwight dotfiles no magic included

## Backup

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

## Symlink

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
