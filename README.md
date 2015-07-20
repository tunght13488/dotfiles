# Tung Ha's dotfiles

~~~sh
git clone https://github.com/tunght13488/dotfiles.git $HOME/dotfiles
cd $HOME/dotfiles
git submodule init
git submodule update
stow git
stow vim
stow zsh
stow tmux
stow other
vim +BundleInstall +qall
~~~
