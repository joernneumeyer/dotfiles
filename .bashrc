parse_git_branch_information() {
  if [ "$(git branch 2> /dev/null)" ]
  then
    branch_status=' '
    if [ -n "$(git status -s 2> /dev/null)" ]
    then
      branch_status="${branch_status}!"
    fi
    branch="$(git rev-parse --abbrev-ref HEAD)"
    base="$(git merge-base ${branch} origin/${branch})"
    remote="$(git rev-parse origin/${branch})"
    local="$(git rev-parse ${branch})"
    if [ "${remote}" = "${base}" ] && [ ${local} = "${base}" ]
    then
      :
    elif [ "${remote}" = "${base}" ]
    then
      branch_status="${branch_status}ᐃ"
    elif [ ${local} = "${base}" ]
    then
      branch_status="${branch_status}ᐁ"
    else
      branch_status="${branch_status}⬄"
    fi
    if [ "${branch_status}" = ' ' ]
    then
      branch_status=''
    fi
    echo "($([ "$(git branch -vv | grep "\*.*\[")" ] && echo '[up] ')${branch}${branch_status})"
  fi
}

export PS1="\[\e[44m\]\u@\h\[\e[49m\] \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch_information)\[\e[00m\]\n\[\e[93m\]>\[\e[39m\] "
