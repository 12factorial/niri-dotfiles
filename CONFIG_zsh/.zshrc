fastfetch

alias \
    cd='z'\
    ci='zi'\
    ls='ls -lh --group-directories-first --color=auto' \
    la='ls -lah --group-directories-first --color=auto' \
    fk='sudo !!' \
    shell='exec $SHELL -l'

extract () {
    if [ -f $1 ] ; then
	case $1 in
	    *.tar.bz2) tar xjf $1 ;;
	    *.tar.gz) tar xzf $1 ;;
	    *.bz2) bunzip2 $1 ;;
	    *.rar) unrar x $1 ;;
	    *.gz) gunzip $1 ;;
	    *.tar) tar xf $1 ;;
	    *.tbz2) tar xjf $1 ;;
	    *.tgz) tar xzf $1 ;;
	    *.zip) unzip $1 ;;
	    *.Z) uncompress $1 ;;
	    *.7z) 7z x $1 ;;
	    *) echo "'$1' cannot be extracted via extract()" ;;
	esac
    else
	echo "'$1' is not a valid file"
    fi
}

# Load built-in modules.
zmodload zsh/complist
autoload -U compinit

# Some XDG Base Directory specification that doesn't fit in .zprofile.
[ -d "$XDG_CACHE_HOME/zsh" ] || mkdir -p "$XDG_CACHE_HOME/zsh"
[ -d "$XDG_STATE_HOME/zsh" ] || mkdir -p "$XDG_STATE_HOME/zsh"
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/zcompcache"
HISTFILE="$XDG_STATE_HOME/zsh/history"

# Set main opts.
setopt auto_param_slash
setopt autocd
setopt extended_glob
setopt globdots
setopt inc_append_history
setopt interactive_comments
setopt no_case_glob
setopt no_case_match
setopt share_history

# Unset main opts.
unsetopt prompt_sp

# Prevent ctrl+s.
stty stop undef

# History opts.
HISTCONTROL=ignoreboth
HISTSIZE=1000000
SAVEHIST=1000000

# WIP
PROMPT='%~ > '

# Load external modules.
eval "$(zoxide init zsh)"
source <(fzf --zsh)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
