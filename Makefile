.PHONY: git tmux conda ipython jupyter

all: git conda tmux ipython jupyter

clean: clean-git clean-conda clean-tmux clean-jupyter clean-ipython

clean-git:
	rm -f $$HOME/.gitconfig

git: clean-git
	ln -sfv $$HOME/.dotfiles/git/gitconfig $$HOME/.gitconfig

clean-conda:
	rm -f $$HOME/.condarc

conda: clean-conda
	ln -sfv $$HOME/.dotfiles/conda/condarc $$HOME/.condarc

clean-tmux:
	rm -f $$HOME/.tmux.conf

tmux: clean-tmux
	ln -sfv $$HOME/.dotfiles/tmux/tmux.conf $$HOME/.tmux.conf

clean-ipython:
	rm -f $$HOME/.ipython/profile_default/startup/startup_script.py

ipython: clean-ipython
	mkdir -p $$HOME/.ipython/profile_default/startup
	ln -sfv $$HOME/.dotfiles/ipython/startup_script.py $$HOME/.ipython/profile_default/startup/startup_script.py

clean-jupyter:
	rm -f $$HOME/.jupyter/nbconfig/notebook.json

jupyter: clean-jupyter
	mkdir -p $$HOME/.dotfiles/jupyter/nbconfig
	ln -sfv $$HOME/.dotfiles/jupyter/notebook.json $$HOME/.jupyter/nbconfig/notebook.json