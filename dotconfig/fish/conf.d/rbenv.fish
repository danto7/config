if test -f ~/.rbenv/bin/rbenv    
  status --is-interactive; and source (rbenv init -|psub)
else    
  print_install_message rbenv    
  function install_rbenv    
    echo "    
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv    
    cd ~/.rbenv && src/configure && make -C src    
    ~/.rbenv/bin/rbenv init    
    mkdir -p \"\$(rbenv root)\"/plugins    
    git clone https://github.com/rbenv/ruby-build.git \"\$(rbenv root)\"/plugins/ruby-build
    " | bash    
  end    
end
