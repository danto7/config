function fish_right_prompt
  set last_status $status
  if test "$last_status" != 0
    set_color red
    printf "$last_status  "
    set_color normal
  end
end