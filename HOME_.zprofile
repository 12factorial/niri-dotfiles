# XDG Base Directory specification.
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# CACHE
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export XCOMPOSECACHE="$XDG_CACHE_HOME/X11/xcompose"

# CONFIG
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/fmmpeg"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc":"$XDG_CONFIG_HOME/gtk-2.0/gtkrc.mine"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export XCOMPOSEFILE="$XDG_CONFIG_HOME/X11/xcompose"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# DATA
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"
export RENPY_MULTIPERSISTENT="$XDG_DATA_HOME/renpy_shared"
export RENPY_PATH_TO_SAVES="$XDG_DATA_HOME/renpy"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"

# STATE
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
