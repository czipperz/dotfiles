# Path to your oh-my-zsh installation.
export ZSH=/home/czipperz/.oh-my-zsh

ZSH_THEME="czipperz"

ENABLE_CORRECTION="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(sudo)

# User configuration

export PATH=/home/czipperz/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/czipperz/.gem/ruby/2.2.0/bin:/home/czipperz/.perl6/2015.03/bin

fpath=( $HOME/.oh-my-zsh/functions $fpath )
autoload -U compinit

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias cl="clear"
alias cls="clear;ls"
alias cla="clear;ls -lA"
alias cll="clear;ls -l"
alias cli="clear;ls -li"
alias clia="clear;ls -liA"
alias clg="clear;git status"
alias cld="clear;/usr/bin/gd" #Uses https://github.com/czipperz/gd

alias l="ls"
alias la="ls -lA"
alias ll="ls -l"
alias li="ls -li"
alias lia="ls -liA"

alias syyu="yaourt -Syyua;gem update"
alias syu="yaourt -Syua;gem update"

alias pacls="comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort)"
alias paclso='sudo pacman -Qdt'
alias pacrmo='sudo pacman -Rs $(pacman -Qtdq)'
alias pac='sudo pacman'
alias pacm='sudo pacman'

alias yaols="comm -23 <(yaourt -Qeq | sort) <(yaourt -Qgq base base-devel | sort)"
alias yaolso='sudo yaourt -Qdt'
alias yaormo='sudo yaourt -Rs $(yaourt -Qtdq)'
alias yao='yaourt'

alias ga="git aa;git cm"
alias mnt='sudo mount'
alias umnt='sudo umount'

alias lllp='systemctl suspend'

alias g='git'
alias G='grep'
alias S='sed -r'
alias c='cd'

alias sc='sudo systemctl'
alias scu='systemctl --user'

alias :e='vim'
alias :d='vimdiff'
alias :q='exit'
alias vi='vim'

alias music="ncmpcpp"

alias sc='sudo systemctl'
alias scu='systemctl --user'

#A shell script clone of 'Jump' called 'b'. https://github.com/czipperz/b
alias b='. b'

screenfetch

#Sources
[[ -s /home/czipperz/.autojump/etc/profile.d/autojump.sh ]] && source /home/czipperz/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u
[[ -s "/home/czipperz/.gvm/bin/gvm-init.sh" ]] && source "/home/czipperz/.gvm/bin/gvm-init.sh"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
setopt interactivecomments
