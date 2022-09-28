# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=20000
# Set vi-like bindings
bindkey -v
# Set a custom key for clearing screen
bindkey "^b" clear-screen
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "/home/${USER}/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

# MY CUSTOM CONFIGURATION VALUES

# Loading antigen
source ~/.antigen.zsh
antigen use oh-my-zsh
antigen bundle asdf
antigen bundle fasd
antigen bundle docker
antigen bundle git
antigen bundle gitfast
antigen bundle kubectl
antigen bundle pip
antigen bundle tmux
antigen bundle vagrant
antigen bundle vi-mode
antigen bundle terraform
antigen theme amuse
antigen apply

# Add .local of python user directories to be available in the path.
PATH=$PATH:~/.local/bin

# Add local .bin for other applications to be available in the path.
PATH=$PATH:~/.bin


# Initialising conda based on installed distribution

# !! Contents within this block are managed by 'conda init' !!
if [ -d ~/.miniconda3 ]
then
    . ~/.miniconda3/etc/profile.d/conda.sh
elif [ -d ~/.anaconda3 ]
then
    . ~/.anaconda3/etc/profile.d/conda.sh
else
    echo "No anaconda/miniconda directory found."
fi


# Configuring thefuck command
# eval $(thefuck --alias)

# Configuring default editor for `gh`
export EDITOR=vim

# Setting up fzf with autocomplete and all
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source the aliases
source ~/.alias

# Source the functions
source ~/.function

# Source Apple-related zshrc
if [[ -f ~/.apple_zshrc ]]
then
    source ~/.apple_zshrc
fi

