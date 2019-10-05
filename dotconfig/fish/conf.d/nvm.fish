if ! test -f ~/.nvm/nvm.sh
  print_install_message nvm
  function install_nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
  end
end
