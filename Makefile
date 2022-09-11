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
	rm -f $$HOME/.jupyter/lab/user-settings/@jupyterlab/notebook-extension/tracker.jupyterlab-settings

jupyter: clean-jupyter
	mkdir -p $$HOME/.jupyter/lab/user-settings/@jupyterlab/notebook-extension/
	ln -sfv $$HOME/.dotfiles/jupyter/tracker.jupyterlab-settings $$HOME/.jupyter/lab/user-settings/@jupyterlab/notebook-extension/tracker.jupyterlab-settings