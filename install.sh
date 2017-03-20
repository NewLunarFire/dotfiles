#!/bin/zsh

function depchk() {
	local git="git-reset-soft, git-reset-hard and git-branch-stash"
	local bc="convert, dec2hex, hex2dec, dec2bin, bin2dec, hex2bin and bin2hex"
	local base64="b64"
	local pandoc="mdview and mdtview"
	local lynx="html2ascii, mdview and mdtview"
	local -a coms
	coms=( git bc base64 pandoc lynx )

	for c in $coms ; do
		if ! type "$c" 1&>2 > /dev/null ; then
			eval "deps=\"\${$c}\""
			echo "Warning: $c not found. It is required for $deps"
		fi
	done
}

depchk

echo "source `pwd`/.zshrc" >> ~/.zshrc
echo "source `pwd`/.vimrc" >> ~/.vimrc
