# Load the shell dotfiles, and then some:
for file in ~/.{exports,aliases,secret,path}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
