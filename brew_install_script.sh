all_packages=""
# CLI tools
all_packages+=" bat wget tmux fasd entr the_silver_searcher ripgrep htop jq jid fd gh"
# Jupyter related stuff
all_packages+=" pandoc"
# misc. dependencies
all_packages+=" pkg-config libffi"

brew install $all_packages
