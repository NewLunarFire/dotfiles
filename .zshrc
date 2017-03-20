# Aliases
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'

# Git aliases
alias git-reset-soft='git reset --soft HEAD^'
alias git-reset-hard='git reset --hard HEAD^'

function git-branch-stash() {
	git stash
	git stash branch $1
}

#Base Conversion
function convert() { echo "obase=$2\nibase=$1\n$3" | bc }
function b64() { echo -n "$1" | base64 }

alias dec2hex='convert 10 16'
alias hex2dec='convert 16 10'
alias dec2bin='convert 10 2'
alias bin2dec='convert 2 10'
alias hex2bin='convert 16 2'
alias bin2hex='convert 2 16'

# Lynx Aliases
alias html2ascii='lynx -force_html -stdin -dump -nolist'
function mdview() {	pandoc -s $1 | lynx -stdin }
function mdtview() { pandoc -s --toc $1 | lynx -stdin}
