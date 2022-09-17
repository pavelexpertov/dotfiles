if [[ -z "`type -P pipx`" ]]
then
	python3 -m pip install --user pipx
else
	echo "pipx is installed"
fi
