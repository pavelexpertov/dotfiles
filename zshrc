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
antigen bundle fasd
antigen bundle docker
antigen bundle git
antigen bundle gitfast
antigen bundle nvm
antigen bundle kubectl
antigen bundle pip
antigen bundle pyenv
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

# Add pyenv's plugin directory to be available in the path and export an environment variable.
PATH=$PATH:~/.pyenv_plugins
# PATH=$PATH:~/.pyenv_plugins/pyenv-virtualenv
export PYENV_HOOK_PATH=~/.pyenv_plugins

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

# Stuff for turning on the node veresion manager
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Configuring thefuck command
# eval $(thefuck --alias)

# Setting up fzf with autocomplete and all
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source the aliases
source ~/.alias

# Source the functions
source ~/.function

# Add pyenv path to PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

