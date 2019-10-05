if command -v direnv > /dev/null
  direnv hook fish | source
else
  print_install_message direnv
  function install_direnv
    if command -v snap > /dev/null
      sudo snap install direnv; and direnv hook fish | source
    else
      echo "Please install snap or install direnv yourself."
    end
  end
end
