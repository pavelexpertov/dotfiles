sudo apt update

all_packages=""
# Shell related packates
all_packages="$all_packages zsh tmux xclip jq jid"
# Utility packages
all_packages="$all_packages unzip silversearcher-ag ripgrep fd-find htop nala"
# Development tools
all_packages="$all_packages vim entr"
# Python related packages
all_packages="$all_packages python3 python3-pip python3-venv python3-virtualenv"
# ML/Data Science packages
all_packages+=" graphviz"
# Virtualisation packages
all_packages+=" virtualbox"

sudo apt install -y $all_packages

# For the (asdf's) pyenv dependencies
sudo apt install -y --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
