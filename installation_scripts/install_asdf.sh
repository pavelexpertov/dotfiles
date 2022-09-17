if [[ !(-d ~/.asdf) ]]
then
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
	. ~/.asdf/asdf.sh
	asdf plugin-add python
	asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

	asdf install nodejs latest
else
	echo "asdf is installed"
fi
