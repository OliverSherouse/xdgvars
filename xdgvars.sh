XDGV_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}"
XDGV_DATA="${XDG_DATA_HOME:-$HOME/.config}"


# Android SDK
export ANDROID_HOME=$XDGV_DATA/android

# Elinks
export ELINKS_CONFDIR=$XDGV_CONFIG/elinks

# IPython
export IPYTHONDIR=$XDGV_CONFIG/ipython

# Jupyter
export JUPYTER_XDG_CONFIG_DIR=$XDGV_CONFIG/jupyter

# Nethack
export NETHACKOPTIONS=$XDGV_CONFIG/nethackrc

# Weechat
export WEECHAT_HOME=$XDGV_CONFIG/weechat

# pass (also know as password-store)
export PASSWORD_STORE_DIR=$XDGV_DATA/pass

# GNU Privacy Guard (gnupg)
export GNUPGHOME=$XDGV_CONFIG/gnupg

# .inputrc
export INPUTRC=$XDGV_CONFIG/inputrc
