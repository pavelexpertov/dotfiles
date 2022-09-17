if [[ -z "`type -P fasd`" ]]
then
    sudo apt-get install fasd
else
    echo "fasd is installed"
fi

