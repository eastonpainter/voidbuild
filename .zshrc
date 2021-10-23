export ZSH="/home/eve/.oh-my-zsh"
plugins=(git)

export PATH=$PATH:/home/eve/.scripts:/home/eve/.local/bin
export EDITOR="vim"
export BROWSER="firefox"
export TERMINAL="st"

PROMPT='%F{blue}%~%f # '

SAVEHIST=10000
HISTFILE=~/.zsh_history

if [ -f ~/.zsh_aliases ]; then
	. ~/.zsh_aliases
fi

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

# Change keyboard layout to Colemak
setxkbmap us -variant colemak
xset r rate 250 35
