if [[ ! (-d ~/.miniconda3) ]]
then
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh
	bash /tmp/miniconda.sh -b -p $HOME/.miniconda3
else
	echo "miniconda is installed"
fi
