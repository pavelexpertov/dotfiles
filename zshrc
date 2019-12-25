# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=20000
# Set vi-like bindings
bindkey -v
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
antigen bundle autojump
antigen bundle git
antigen bundle nvm
antigen bundle tmux
antigen bundle vi-mode
antigen theme amuse
antigen apply

# Source autojump shell script
. $HOME/.autojump/etc/profile.d/autojump.sh

# Add .local of python user directories to be available in the path.
PATH=$PATH:~/.local/bin

# Add .local of python user directories to be available in the path.
PATH=$PATH:~/.bin

# Add pyenv's plugin directory to be available in the path and export an environment variable.
PATH=$PATH:~/.pyenv_plugins
# PATH=$PATH:~/.pyenv_plugins/pyenv-virtualenv
export PYENV_HOOK_PATH=~/.pyenv_plugins

# Initialising conda based on installed distribution

# !! Contents within this block are managed by 'conda init' !!
if [ -d ~/.miniconda3 ]
then
    export PATH="/home/pavel/.miniconda3/bin:$PATH"
elif [ -d ~/.anaconda3 ]
then
    export PATH="/home/pavel/.anaconda3/bin:$PATH"
else
    echo "No anaconda diretory found."
fi
# <<< conda initialize <<<

# Stuff for turning on the node veresion manager
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Configuring thefuck command
# eval $(thefuck --alias)

# Add pyenv path to PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
