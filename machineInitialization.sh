#!/usr/bin/env bash

echo "Starting"

# Check for Homebrew and install if we don't have it
if [[ ! $(command -v brew) ]]; then
  echo "Installing Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

if [[ ! $(command -v rvm) ]]; then
  echo "Installing rvm"
  \curl -sSL https://get.rvm.io | bash
fi
