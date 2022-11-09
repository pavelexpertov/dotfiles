if [[ -z "`type -P gh`" ]]
then
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
    sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
    sudo apt update
    sudo apt install gh -y

    # If you see that this script failed during 'installation',
    # it's because you need to set GitHub token in environment
    # for operation to work.
    gh extension install davidraviv/gh-clean-branches
else
    echo "gh is installed"
fi
