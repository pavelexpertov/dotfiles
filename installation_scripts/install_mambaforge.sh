if [[ ! (-d ~/.mambaforge) ]]
then
	wget https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh -O /tmp/mambaforge.sh
	bash /tmp/mambaforge.sh -b -p $HOME/.mambaforge
else
	echo "mambaforge is installed"
fi
