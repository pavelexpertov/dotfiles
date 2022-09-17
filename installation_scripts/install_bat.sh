if [[ -z "`type -P bat`" ]]
then
    wget https://github.com/sharkdp/bat/releases/download/v0.18.0/bat-musl_0.18.0_amd64.deb -O /tmp/bat.deb
    cd /tmp
    sudo apt install ./bat.deb
else
    echo "bat is installed"
fi
