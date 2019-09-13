# Git shortcuts
function gl --description 'alias gl=git log'
	git log $argv;
end

function g --description 'alias g=git'
	git  $argv;
end

function ga --description 'alias ga=git add'
	git add $argv;
end

function gc --description 'alias gc=git commit'
	git commit $argv;
end

function gca --description 'alias gca=git commit --amend'
	git commit --amend $argv;
end

function gch --description 'alias gch=git checkout'
	git checkout $argv;
end

function gl --description 'alias gl=git log'
	git log $argv;
end

function gp --description 'alias gp=git push'
	git push $argv;
end

function gt --description 'alias gt=git status'
	git status $argv;
end

function gu --description 'alias gu=git pull --rebase --autostash'
	git pull --rebase --autostash $argv;
end