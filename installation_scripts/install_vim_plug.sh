if [[ !(-a ~/.vim/autoload/plug.vim) ]]
then
    cd ~/.vim/autoload
    wget -d https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    vim +PlugInstall +qa
else
    echo "vim-plug is installed"
fi
