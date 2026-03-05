# XDGvars

Environment variables to make programs use xdg-ish folders.

## The Big Idea

There are too many programs that stick a `.foo` folder in your home directory. It would be better if most of them followed the XDG structure. Until then, some allow you to set configuration and data directories with environment variables. This project provides `xdgvars.sh`, which sets many of those for you.

`xdgvars.sh` sets defaults only when a variable is unset, so explicit user-defined values are preserved.

## Supported programs

Currently sets environment variables for:

- Android SDK
- AWS CLI
- Docker
- Elinks
- Go
- GnuPG
- IPython
- Jupyter
- Kubernetes
- Nethack
- npm
- pass (password-store)
- pi (pi-coding-agent)
- pip
- Rust
- Weechat
- wget
- `inputrc`

## Installation and use

To install, clone or download this repository to your `$XDG_CONFIG_HOME` folder and source `xdgvars.sh` in your `~/.bash_profile` with a snippet like this:

```bash
if [ -f "${XDG_CONFIG_HOME:-$HOME/.config}/xdgvars/xdgvars.sh" ]; then
    . "${XDG_CONFIG_HOME:-$HOME/.config}/xdgvars/xdgvars.sh"
fi
```
