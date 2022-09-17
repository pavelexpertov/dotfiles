if [[ !(-d ~/.fzf) ]]
then
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install --key-bindings --completion --no-update-rc --no-bash --no-fish
else
	echo "fzf is installed"
fi
