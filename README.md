# dotfiles
Mah dotfiles

## Installation
```shell
# First install initial stuff
sh initial_install.sh
# Recursively pull git submodules
git submodule update --recursive --remote
# Run the dotfiles install
./install
# Change shell (tip: run `cat /etc/shells` to see what you got and pop it in command)
sudo chsh -s /bin/zsh $USER
# Log out or reboot manually. Then continue...
# Run after installation script
sh after_install_script.sh
```

## Documentation for Dotbot
[Here](https://github.com/anishathalye/dotbot)
