.PHONY: git tmux conda

all: git conda tmux

clean: clean-git clean-conda clean-tmux

clean-git: 
	rm -f $$HOME/.gitconfig

git: clean-git
	ln -sfv $$HOME/.dotfiles/git/gitconfig ~/.gitconfig

clean-conda:
	rm -f $$HOME/.condarc

conda: clean-conda
	ln -sfv $$HOME/.dotfiles/conda/condarc $$HOME/.condarc

clean-tmux:
	rm -f $$HOME/.tmux.conf

tmux: clean-tmux
	ln -sfv $$HOME/.dotfiles/tmux/tmux.conf $$HOME/.tmux.conf