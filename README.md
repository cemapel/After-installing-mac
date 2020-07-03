# After-installing-mac
I'm doing these after installing the Mac.

## Installing Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## Brew Packages I Installed
```
brew install fish wget neovim lsd node terminal-notifier fzf neofetch ripgrep lnav tmux
```
## Brew Cask Packages I Installed
```
brew cask install spotify gimp
```

## Vim-Plug Installation
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Fish Plugin Installation
```
omf install https://github.com/laughedelic/brew-completions spacefish
```


## NeoVim Config With This Link
Download .vimrc file to your home folder.
```
ln -s ~/.vimrc ~/.config/nvim/init.vim
```
