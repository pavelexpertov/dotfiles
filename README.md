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
```

## Apple-specific instructions

Before running the `./install`, you need to do the following steps:
- Install the `brew`.
- Run brew-specific install script called `brew_install_script.sh`.
- Run `./install --except shell` so that you don't have to run Linux-related commands.
- Afterwards, unfortunately, you will have to install commands/libraries/dependencies manually by looking at the installation scripts of interest to your setup needs. Enjoy :)

## Documentation for Dotbot
[Here](https://github.com/anishathalye/dotbot)
