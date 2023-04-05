# My dotfiles

```bash
zsh
git clone --recursive https://github.com/tunght13488/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh

git clone --branch rocco https://github.com/tunght13488/NvChad ~/.config/nvim --depth 1 && nvim

git clone https://github.com/tunght13488/dotfiles.git $HOME/.dotfiles
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
git clone https://github.com/supercrabtree/k.git $HOME/k
cd $HOME/.dotfiles
stow git
stow tmux
stow other
# stow vim
# vim +PlugInstall +qall

mkdir -p $HOME/.config/i3
ln -sf $HOME/.dotfiles/i3/config $HOME/.config/i3/

```

