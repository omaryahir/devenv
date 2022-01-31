echo "installing git branch in prompt"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="$PS1\$(parse_git_branch) "
