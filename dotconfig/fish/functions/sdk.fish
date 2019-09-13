function sdk
  if test -s "$HOME/.sdkman/bin/sdkman-init.sh"
    bass source "$HOME/.sdkman/bin/sdkman-init.sh" ';' SDKMAN_DIR="$HOME/.sdkman" sdk $argv
  else
    echo "sdkman not installed"
  end
end