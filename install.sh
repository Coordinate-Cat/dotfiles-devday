#!/bin/bash

function plug_mana () {
  # github.com/user/repo
  declare -r repo_path=$1
  declare -r zsh_plugins_dir="$HOME/.zsh/plugins"
  [[ ! -d $zsh_plugins_dir ]] && mkdir "$zsh_plugins_dir"
  git clone "https://${repo_path}.git" "${zsh_plugins_dir}/${repo_path}"
}

SCRIPT_DIR=$(dirname "$0")
readonly SCRIPT_DIR

ln -svf "$SCRIPT_DIR/.zshrc" ~/.zshrc
ln -svf "$SCRIPT_DIR/.vimrc" ~/.vimrc

plug_mana github.com/romkatv/powerlevel10k

# add your installation commands here

# Example: Install a package using apt-get
# sudo apt-get install <package-name>

# Example: Clone a Git repository
# git clone <repository-url>

# Example: Copy files to a specific directory
# cp <source-file> <destination-directory>

# Example: Set environment variables
# export <variable-name>=<value>

# Example: Run a command
# <command>

# Add more commands as needed

echo "Installation completed!"
