
"""
	
	export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/Library/Python/3.8/bin:$PATH"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# GIT FUNCTIONS

parse_git_branch() {
	[ -d ".git" ] && cat .git/HEAD | awk -v separator="/" 'BEGIN {FS=separator} $0 ~ separator {printf "%s", $3}'
	#git branch --show-current
	#git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF='%f'
COLOR_USR='%F{243}'
COLOR_DIR='%F{197}'
COLOR_GIT='%F{39}'
#NEWLINE=$'\n'
#setopt PROMPT_SUBST
#export PROMPT='${COLOR_USR}%n@%M ${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '
#
setopt PROMPT_SUBST
export PROMPT='%F{blue}%n@%F{grey}%M %F{cyan}%~%f %F{green}$(parse_git_branch)%f %F{normal}$%f '




alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias g=git
alias gg='git status'
alias grep='grep --color=auto'
alias l='ls -lah'
alias last='git log -2'
alias lg='git log --pretty=format:'\''%h was %an, %ar, message: %s'\'' --graph'
alias nah='git reset --hard && git clean -df'
alias new='git checkout -b'
alias ports='lsof -i -l -P'
alias squash='git rebase -i HEAD~2'
alias tortuga='sshfs -o no_readahead,noappledouble,nolocalcaches walter@tortuga:/home/walter ~/dev/mabrian/tortuga -o volname=TORTUGA'
alias pelican='sshfs -o no_readahead,noappledouble,nolocalcaches walter@pelican:/home/walter ~/dev/mabrian/pelican -o volname=PELICAN'
alias tunnel_hotels='open http://localhost:5641 && ssh hotels -L 5641:localhost:5601'
"""
