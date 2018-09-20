# Path variable
export PATH=$HOME/.bin:/usr/local/bin:$PATH

# Path to oh-my-zsh
export ZSH=/home/$USER/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"
DEFAULT_USER=$USER

# Update oh-my-zsh
#DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=7

# History
HISTSIZE=1000
HISTFILE="$HOME/.history"
SAVEHIST=$HISTSIZE
HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

# User configuration

zstyle ':completion:*' rehash true
set -o noclobber

setopt no_auto_remove_slash

# Preferred editors
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Keybinds
bindkey '^H' backward-kill-word
bindkey '[3;5~' kill-word

insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

# Aliases
alias sudo='nocorrect sudo '
alias ht='htop'
alias ytdl='youtube-dl -f best '
alias ytdlaria='youtube-dl -f best --external-downloader aria2c --external-downloader-args "-x 16 -s 16"'
alias yt='youtube-dl -f 'bestvideo+bestaudio/best''
alias query='cat /etc/hosts | grep '
alias remorphans='sudo pacman -Rns $(pacman -Qtdq)'
alias find='fd -H '
alias shred='shred -u '
alias vim='nvim '
alias rd='rm -r '
alias aria='aria2c -x 16 -s 16 '
alias cp='rsync -P '
alias lg='lazygit '
alias grep='rg'
