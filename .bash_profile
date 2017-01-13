#!/bin/bash

# Colors
default='\[\033[39m\]'
white='\[\033[97m\]'
cyan='\[\033[36m\]'
cherry='\[\033[38;5;197m\]'
grey='\[\033[38;5;243m\]'

# Git branch parser
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ *\1/'
}

# Set prompt
export PS1="${white}\u${cyan}@${white}\h ${cherry}\w${grey}\$(parse_git_branch) ${default}$ "
