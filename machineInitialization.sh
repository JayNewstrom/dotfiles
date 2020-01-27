#!/usr/bin/env bash

echo "Starting"

if [[ ! $(command -v rvm) ]]; then
  echo "Installing rvm"
  \curl -sSL https://get.rvm.io | bash
fi

# Check for Homebrew and install if we don't have it
if [[ ! $(command -v brew) ]]; then
  echo "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

./dotfileInitialization.sh
source "$HOME/.bash_profile"

mkdir "$ANDROID_HOME/licenses" || true
ln -sfn "$(pwd)/android-sdk-license" "$ANDROID_HOME/licenses/android-sdk-license"
