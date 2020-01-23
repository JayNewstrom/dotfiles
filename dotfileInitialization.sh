#!/usr/bin/env bash

gpg --list-keys || true
ln -sfn "$(pwd)/.gnupg/gpg.conf" "$HOME/.gnupg/gpg.conf"
ln -sfn "$(pwd)/.gnupg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"
ln -sfn "$(pwd)/gitignore" "$HOME/.gitignore"
mkdir -p "$HOME/.gradle"
ln -sfn "$(pwd)/.gradle/gradle.properties" "$HOME/.gradle/gradle.properties"

for file in .{bash_profile,gitconfig,exports,aliases,path,inputrc}; do
  ln -sfn "$(pwd)/$file" "$HOME/$file"
done
unset file
