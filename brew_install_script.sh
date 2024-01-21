all_packages=""
# CLI tools
all_packages+=" bat wget tmux fasd entr the_silver_searcher ripgrep htop jq jid fd gh httpie universal-ctags"
# Cloud/Containers related stuff
all_packages+=" kubectx podman podman-desktop"
# Jupyter related stuff
all_packages+=" pandoc"
# misc. dependencies
all_packages+=" pkg-config libffi"

brew install $all_packages
