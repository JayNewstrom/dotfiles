#!/usr/bin/env bash

gpg --list-keys || true;
ln -sfn $(pwd)/.gnupg/gpg.conf $HOME/.gnupg/gpg.conf;
ln -sfn $(pwd)/.gnupg/gpg-agent.conf $HOME/.gnupg/gpg-agent.conf;
ln -sfn $(pwd)/gitignore $HOME/.gitignore;

for file in .{bash_profile,gitconfig,exports,aliases,android_bash_profile,path,inputrc}; do
	ln -sfn "$(pwd)/$file" "$HOME/$file";
done;
unset file;
