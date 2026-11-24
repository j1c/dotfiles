# dotfiles

## Setup

1. Clone the repo.

```
$ cd $HOME
$ git clone https://github.com/j1c/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
```

2. (a) Install all the settings

```
$ make all
```

2. (b) Install specific setting

You can specify which setting you want to install by specifying the program. For example, if you want to install the tmux settings, use the command:

```{bash}
$ make tmux
```

Below are the list of program settings in this repo:

1. git
2. conda
3. tmux
4. ipython
5. jupyter

## Cleanup

To remove all symlinks, run `make clean`.
