if [[ -z "`type -P nvm`" ]]
then
    wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh -O /tmp/install_nvm.sh
    bash /tmp/install_nvm.sh
else
	echo "nvm is installed"
fi
