if [ -z ${XDG_CONFIG_HOME+x} ]; then
    XDGV_CONFIG=$HOME/.config
else
    XDGV_CONFIG=XDG_CONFIG_HOME
fi

if [ -z ${XDG_DATA_HOME+x} ]; then
    XDGV_DATA=$HOME/.config
else
    XDGV_DATA=XDG_DATA_HOME
fi


# Android SDK
export ANDROID_HOME=$XDG_DATA_HOME/android

# Elinks
export ELINKS_CONFDIR=$XDG_CONFIG/elinks

# IPython
export IPYTHONDIR=$XDG_CONFIG/ipython

# Jupyter
export JUPYTER_XDG_CONFIG_DIR=$XDG_CONFIG/jupyter

# Nethack
export NETHACKOPTIONS=$XDG_CONFIG/nethackrc