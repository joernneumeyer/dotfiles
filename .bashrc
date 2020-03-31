parse_git_branch_information() {
  if [ "$(git branch 2> /dev/null)" ]
  then
    branch_status=' '
    if [ -n "$(git status -s 2> /dev/null)" ]
    then
      branch_status="${branch_status}!"
    fi
    branch="$(git rev-parse --abbrev-ref HEAD)"
    if [ "$(git merge-base ${branch} origin/${branch} 2>&1)" ]
    then
      base="a"
      remote="b"
      local="c"
    else
      base="$(git merge-base ${branch} origin/${branch})"
      remote="$(git rev-parse origin/${branch})"
      local="$(git rev-parse ${branch})"
    fi
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

export PS1="\[\e[31m\][\[\e[93m\]\u\[\e[95m\]@\[\e[94m\]\h\[\e[31m\]]\[\e[39m\] \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch_information)\n\[\e[32m\]\[\e[1m\]>\[\e[0m\]\[\e[39m\] "
