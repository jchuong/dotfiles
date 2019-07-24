# Dotfiles

# Requirements

* nvim
  * Plug plugin manager (auto-installed via init.vim)
* base16_shell
* zsh
* oh-my-zsh
* imwheel

## NeoVim

Uses [Plugged](https://github.com/junegunn/vim-plug) to manage plugins.

1. Install neovim
2. Move `init.vim` to `$HOME/.config/nvim/init.vim`
3. Install Plugged (if not auto-installed)
4. Run `:PlugInstall` to install plugins

## Shell

1. Install `zsh`
2. Install `oh-my-zsh`
3. Install `base16-shell`
4. Pick your base16 theme
5. Install `imwheel`
5. Copy files:
  + `.zshrc` to `$HOME`
  + `james.zsh-theme` to `$ZSH/themes`
  + `imwheelrc` to `$HOME/.imwheelrc`
