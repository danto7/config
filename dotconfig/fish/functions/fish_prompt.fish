function fish_prompt
  printf '\n'
  if not set -q VIRTUAL_ENV_DISABLE_PROMPT
    set -g VIRTUAL_ENV_DISABLE_PROMPT true
  end
  set_color yellow
  if test (whoami) != 'daniel'
    printf '%s' (whoami)
    set_color normal
    printf ' at '
  end

  set_color magenta
  echo -n (prompt_hostname)
  set_color normal
  printf ' in '

  set_color cyan
  printf '%s' (pwd | sed "s|^$HOME|~|")
  set_color normal

  # git status
  printf '%s ' (__fish_git_prompt)

  # rbenv
  set_color red
  if ruby -v 2>&1 > /dev/null
    printf '\ue791 %s ' (ruby -v | cut -f 2 -d ' ')
  end
  set_color normal

  # nodejs
  set_color green
  if command -v node > /dev/null
    printf '\ue718 %s ' (node -v)
  end
  set_color normal

  # Line 2
  echo
  if test $VIRTUAL_ENV
    printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
  end
  printf '> '
  set_color normal
end

function fish_right_prompt
  set last_status $status
  if test "$last_status" != 0
    set_color red
    printf "$last_status 🌧 "
    set_color normal
  end
end
