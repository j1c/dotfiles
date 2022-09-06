.PHONY: git tmux conda jupyter

all: git conda tmux jupyter

clean: clean-git clean-conda clean-tmux clean-jupyter

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

clean-jupyter:
	rm -rf $$HOME/.ipython/profile_default/startup/startup_script.py

jupyter: clean-jupyter
	mkdir -p $$HOME/.ipython/profile_default/startup
	ln -sfv $$HOME/.dotfiles/ipython/startup_script.py $$HOME/.ipython/profile_default/startup/startup_script.py