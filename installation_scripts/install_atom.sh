if [[ -z "`type -P atom`" ]]
then
    wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
    sudo apt update
    sudo apt-get install atom

    apm install hydrogen vim-mode-plus ex-mode
else
    echo "Atom and some dev packages are installed"
fi
