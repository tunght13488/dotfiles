# My dotfiles

~~~bash
git clone https://github.com/tunght13488/dotfiles.git $HOME/dotfiles
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
git clone https://github.com/lukechilds/zsh-nvm.git ~/.zsh-nvm
git clone https://github.com/lukechilds/zsh-better-npm-completion.git ~/.zsh-better-npm-completion
cd $HOME/dotfiles
git submodule init
git submodule update
stow git
stow vim
stow tmux
stow other
vim +PluginInstall +qall
~~~
