fastfetch

alias \
    ls='ls -lh --group-directories-first --color=auto' \
    la='ls -lah --group-directories-first --color=auto' \
    fk='sudo !!' \
    shell='exec $SHELL -l'

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
source <(fzf --zsh)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
