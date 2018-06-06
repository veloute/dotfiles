# Path variable
export PATH=$HOME/.bin:/usr/local/bin:$PATH

# Path to oh-my-zsh
export ZSH=/home/$USER/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"
DEFAULT_USER=$USER

# Update oh-my-zsh
DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=13

# History
HISTSIZE=1000
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

# User configuration

zstyle ':completion:*' rehash true
set -o noclobber

# Preferred editors
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Keybinds
bindkey '^H' backward-kill-word
bindkey '[3;5~' kill-word

# Alt + S inserts sudo at the beginning of a command
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

# Aliases
alias sudo='nocorrect sudo '
alias ht='htop'
alias ytdl='youtube-dl -f best '
# For 1080p video on YouTube
alias yt='youtube-dl -f 'bestvideo+bestaudio/best''
# Make the /etc/hosts file queryable
alias query='cat /etc/hosts | grep '
alias remorphans='sudo pacman -Rns $(pacman -Qtdq)'
alias find='fd -H '
alias shred='shred -u '
alias vim='nvim '
