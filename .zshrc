export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/Library/Python/3.8/bin:$PATH"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# GIT FUNCTIONS

parse_git_branch() {
	[ -d ".git" ] && cat .git/HEAD | awk -v separator="/" 'BEGIN {FS=separator} $0 ~ separator {printf "%s", $3}'
}
setopt PROMPT_SUBST
export PROMPT='%F{blue}%n@%F{grey}%M %F{cyan}%~%f %F{green}$(parse_git_branch)%f %F{normal}$%f '

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias g=git
alias gs='git status '
alias gd='git diff '
alias ga='git add '
alias gg='git push -u origin '
alias grep='grep --color=auto'
alias l='ls -lah'
alias last='git log -2'
alias lg='git log --pretty=format:'\''%h was %an, %ar, message: %s'\'' --graph'
alias nah='git reset --hard && git clean -df'
alias new='git checkout -b'
alias ports='lsof -i -l -P'
alias squash='git rebase -i HEAD~2'
