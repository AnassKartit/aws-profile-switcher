#!/usr/bin/env bash

set -e

# Check if fzf is installed
if ! command -v fzf >/dev/null; then
  echo "Error: fzf is not installed. Please install fzf before installing the plugin."
  exit 1
fi

# Check if AWS CLI is installed
if ! command -v aws >/dev/null; then
  echo "Error: AWS CLI is not installed. Please install AWS CLI before installing the plugin."
  exit 1
fi

# Copy the plugin files to the appropriate directories
cp -v aws-profile-switcher.plugin.zsh ~/.oh-my-zsh/custom/plugins/aws-profile-switcher
cp -v aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh

# Add the plugin to the list of plugins in ~/.zshrc
if ! grep -q "aws-profile-switcher" ~/.zshrc; then
  sed -i -E "s/^plugins=\(([^)]+)\)/plugins=(\1 aws-profile-switcher)/" ~/.zshrc
fi

echo "AWS profile switcher plugin installed successfully!"
