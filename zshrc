# Path to your oh-my-zsh installation.
export ZSH=/home/czipperz/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="czipperz"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitfast git-extras sudo)

# User configuration

export PATH=/home/czipperz/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/czipperz/.gem/ruby/2.2.0/bin:/home/czipperz/.perl6/2015.03/bin

fpath=( $HOME/.oh-my-zsh/functions $fpath )

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls="clear;ls"

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

alias ga="git aa;git ci -m"
alias mnt='sudo mount'
alias umnt='sudo umount'

alias lllp='systemctl suspend'

alias g='git'
alias G='grep'

alias S='sed -r'

alias sc='sudo systemctl'
alias scu='systemctl --user'

alias :e='vim'
alias :q='exit'

alias music="ncmpcpp"

lmr

[[ -s /home/czipperz/.autojump/etc/profile.d/autojump.sh ]] && source /home/czipperz/.autojump/etc/profile.d/autojump.sh

	autoload -U compinit && compinit -u

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/czipperz/.gvm/bin/gvm-init.sh" ]] && source "/home/czipperz/.gvm/bin/gvm-init.sh"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ ! -s ~/.config/mpd/pid ] && mpd
