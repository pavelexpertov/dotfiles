if [[ -z "`type -P exa`" ]]
then
	wget https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip -O /tmp/exa.zip
	unzip /tmp/exa.zip exa-linux-x86_64 -d ~/.bin
	mv ~/.bin/exa-linux-x86_64 ~/.bin/exa
else
	echo "exa is installed"
fi
