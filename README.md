# XDGvars

Environment variables to make programs use xdg-ish folders.

## The Big Idea

There are too many programs that stick a `.foo` folder in your home directory. It would be better if most of them followed the XDG structure. Until then, some allow you to set configuration and data directories with environment variables. This project provides `xdgvars.sh`, which sets many of those for you.

## Installation and use

To install, clone or download this repository to your `$XDG_CONFIG_HOME` folder and source `xdgvars.sh` in either your `~/.profile` or your `~/.bashrc` with a snippet like this:

``` {.bash}

if [ -f $XDG_CONFIG_HOME/xdgvars/xdgvars.sh ]; then
    source $XDG_CONFIG_HOME/xdgvars/xdgvars.sh 
fi
```
