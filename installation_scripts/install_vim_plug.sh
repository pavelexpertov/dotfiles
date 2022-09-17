if [[ !(-a ~/.vim/autoload/plug.vim) ]]
then
    cd ~/.vim/autoload
    wget -d https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "vim-plug is insatlled"
fi
