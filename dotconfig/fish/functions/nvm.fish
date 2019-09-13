function nvm
  if test -s "~/.nvm/nvm.sh"
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
  else
    echo "nvm not installed"
  end
end