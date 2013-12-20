# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in $HOME/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="ys"

# Example aliases
alias zshconfig="st $HOME/.zshrc"
alias ohmyzsh="st $HOME/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=1

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in $HOME/.oh-my-zsh/plugins/*)
# Custom plugins may be added to $HOME/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  # ant #
  # apache2-macports #
  # archlinux #
  # autoenv #
  # autojump
  # battery #
  bower
  brew
  bundler
  # bwana #
  # cabal #
  # cake #
  capistrano
  # celery #
  # cloudapp #
  # coffee #
  # colemak #
  colored-man
  # colorize #
  command-not-found
  # compleat #
  composer
  # copydir #
  # copyfile #
  cp
  # cpanm #
  # debian #
  # dircycle #
  dirpersist
  # django #
  # docker #
  # emoji-clock #
  encode64
  extract
  # fabric #
  fasd #
  # fbterm #
  # forklift #
  # gas #
  gem
  git
  git-extras
  git-flow
  # git-flow-avh #
  # git-hubflow #
  # git-remote-branch #
  # gitfast #
  # github #
  gitignore
  # gnu-utils #
  # go #
  # golang #
  # gpg-agent #
  # gradle #
  # grails #
  heroku
  history
  history-substring-search
  # jake-node #
  jira
  # jruby #
  # jump #
  # kate #
  # knife #
  # knife_ssh #
  laravel
  # last-working-dir
  # lein #
  # lighthouse #
  lol
  # macports #
  # mercurial #
  # mix #
  # mosh #
  # mvn #
  # mysql-macports #
  # nanoc #
  node
  npm
  nvm
  # nyan #
  osx
  pass #
  # per-directory-history
  perl
  # phing #
  pip
  # pj #
  # pod #
  # postgres #
  # pow #
  # powder #
  # powify #
  # profiles #
  python
  rails #
  # rails3 #
  # rails4
  rake
  rand-quote
  rbenv
  # rbfu #
  # rebar #
  redis-cli
  # repo #
  rsync
  ruby
  rvm
  safe-paste
  sbt
  scala
  # screen #
  # sfffe
  # sprunge #
  ssh-agent
  sublime
  # supervisor #
  # suse #
  # svn #
  # symfony #
  symfony2
  # systemd #
  # taskwarrior #
  # terminalapp #
  # terminitor #
  # textmate #
  # themes #
  # thor #
  # tmux #
  # tmuxinator #
  torrent
  urltools
  vagrant
  # vi-mode #
  # virtualenv #
  # virtualenvwrapper #
  vundle #
  # wakeonlan #
  # web-search #
  # yum #
  # z #
  # zeus #
  zsh-history-substring-search
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

################################################################################
# LIBRARY

# MeRC
[[ -s $HOME/.merc ]] && . $HOME/.merc

# if [ -f /opt/local/etc/profile.d/autojump.zsh ]; then
#   . /opt/local/etc/profile.d/autojump.zsh
# fi

# nvm
if [[ -s $HOME/.nvm/nvm.sh ]]; then
  . $HOME/.nvm/nvm.sh
  alias node='$NVM_BIN/node'
  alias npm='$NVM_BIN/npm'
fi

# rvm
if [[ -s $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
  # export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Mark
[[ -s $HOME/.mark.sh ]] && . $HOME/.mark.sh

# Perlbrew
[[ -s $HOME/perl5/perlbrew/etc/bashrc ]] && . $HOME/perl5/perlbrew/etc/bashrc

################################################################################
# VARIABLES

PROJECT_PATHS=($HOME/Projects)

# Paths
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export MANPATH="/usr/local/man:$MANPATH"
export FPATH="$FPATH:/opt/local/share/zsh/site-functions/"

# GNU Utils
# export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
# export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

# ssh
export SSH_KEY_PATH="$HOME/.ssh/id_rsa"

# Homebrew
export HOMEBREW_GITHUB_API_TOKEN=401709b45efda5610240d15cb399d021922fc786

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Python path
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/

# GoPath
export GOPATH=$HOME/.gocode
export PATH=$PATH:$HOME/.gocode/bin

# Android
export ANDROID_HOME=/usr/local/opt/android-sdk

# Git diff highlight
export PATH=$PATH:$(brew --prefix git)/share/git-core/contrib/diff-highlight

################################################################################
# ALIAS

# Sublime
alias st='$HOME/bin/subl'

# Laravel
alias lv="artisan"

# Shuttle
alias shuttleconfig="st $HOME/.shuttle.json"

# Git
alias gfl="git flow"
alias gfh='git fetch --verbose --prune'
alias grb='git rebase --verbose'
alias gcb='git checkout -b'
alias gbu='git branch --set-upstream-to'

# History
alias h?="history | grep"

# Fasd
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias ds='fasd -sid'     # interactive directory selection
alias fs='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

# ls
# alias l='ls -alh'
# alias ll='ls -lh'

################################################################################
# KEYS BINDING

# Zsh history substring search
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
