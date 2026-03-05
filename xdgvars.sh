# shellcheck shell=sh

XDGV_CONFIG="${XDG_CONFIG_HOME:-"$HOME/.config"}"
XDGV_DATA="${XDG_DATA_HOME:-"$HOME/.local/share"}"
XDGV_CACHE="${XDG_CACHE_HOME:-"$HOME/.cache"}"

# Set defaults only when unset; never override explicit user environment values.

# Android SDK
: "${ANDROID_HOME:="$XDGV_DATA/android"}"
export ANDROID_HOME

# Elinks
: "${ELINKS_CONFDIR:="$XDGV_CONFIG/elinks"}"
export ELINKS_CONFDIR

# IPython
: "${IPYTHONDIR:="$XDGV_CONFIG/ipython"}"
export IPYTHONDIR

# Jupyter
: "${JUPYTER_XDG_CONFIG_DIR:="$XDGV_CONFIG/jupyter"}"
export JUPYTER_XDG_CONFIG_DIR

# Pi (pi-coding-agent)
# Pi uses a single "agent dir" for config, auth, sessions, etc.
# This moves it out of ~/.pi/agent.
: "${PI_CODING_AGENT_DIR:="$XDGV_CONFIG/pi"}"
export PI_CODING_AGENT_DIR

# Nethack
: "${NETHACKOPTIONS:="$XDGV_CONFIG/nethackrc"}"
export NETHACKOPTIONS

# Weechat
: "${WEECHAT_HOME:="$XDGV_CONFIG/weechat"}"
export WEECHAT_HOME

# pass (also known as password-store)
: "${PASSWORD_STORE_DIR:="$XDGV_DATA/pass"}"
export PASSWORD_STORE_DIR

# GNU Privacy Guard (gnupg)
# Keep under data: GNUPGHOME contains key material and runtime data.
: "${GNUPGHOME:="$XDGV_DATA/gnupg"}"
export GNUPGHOME

# Docker
: "${DOCKER_CONFIG:="$XDGV_CONFIG/docker"}"
export DOCKER_CONFIG

# Kubernetes
: "${KUBECONFIG:="$XDGV_CONFIG/kube/config"}"
export KUBECONFIG

# wget
: "${WGETRC:="$XDGV_CONFIG/wgetrc"}"
export WGETRC

# Rust
: "${CARGO_HOME:="$XDGV_DATA/cargo"}"
export CARGO_HOME
: "${RUSTUP_HOME:="$XDGV_DATA/rustup"}"
export RUSTUP_HOME

# npm
: "${NPM_CONFIG_USERCONFIG:="$XDGV_CONFIG/npm/npmrc"}"
export NPM_CONFIG_USERCONFIG
: "${NPM_CONFIG_CACHE:="$XDGV_CACHE/npm"}"
export NPM_CONFIG_CACHE

# pip
: "${PIP_CONFIG_FILE:="$XDGV_CONFIG/pip/pip.conf"}"
export PIP_CONFIG_FILE

# AWS CLI
: "${AWS_CONFIG_FILE:="$XDGV_CONFIG/aws/config"}"
export AWS_CONFIG_FILE
: "${AWS_SHARED_CREDENTIALS_FILE:="$XDGV_CONFIG/aws/credentials"}"
export AWS_SHARED_CREDENTIALS_FILE

# Go
# If GOPATH is user-defined, leave GOMODCACHE untouched unless user also set it.
if [ -n "${GOPATH+x}" ]; then
    _XDGV_GOPATH_WAS_SET=1
fi
: "${GOPATH:="$XDGV_DATA/go"}"
export GOPATH
if [ -z "${GOMODCACHE+x}" ] && [ -z "${_XDGV_GOPATH_WAS_SET+x}" ]; then
    GOMODCACHE="$GOPATH/pkg/mod"
fi
if [ -n "${GOMODCACHE+x}" ]; then
    export GOMODCACHE
fi
unset _XDGV_GOPATH_WAS_SET

# .inputrc
: "${INPUTRC:="$XDGV_CONFIG/inputrc"}"
export INPUTRC
