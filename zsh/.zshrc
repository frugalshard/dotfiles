# Created by newuser for 5.8

# zsh-completions
autoload -Uz compinit promptinit
compinit

# You don't want to be commit to the wrong branch
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '- ('$branch')'
  fi
}

# Untracked? Added? Modified?
#

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
# prompt='%2/ $(git_branch_name) > '
export PROMPT='%B%(?..[%?] )%b%n@%U%m%u> '
export RPROMPT="$(git_branch_name)%F{${1:-green}}%~%f $(git_branch_name)"
