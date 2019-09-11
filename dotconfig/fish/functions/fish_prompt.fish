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

  set_color $fish_color_cwd
  printf '%s' (pwd | sed "s|^$HOME|~|")
  set_color normal

  # rbenv
  set_color red
  if which rbenv > /dev/null
    printf ' 💎 %s ' (rbenv version | rg -o '^[\d\.]+ ')
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
  set s $status
  if test "$s" != 0
    set_color red
    printf "$s 🌧 "
    set_color normal
  end
end
