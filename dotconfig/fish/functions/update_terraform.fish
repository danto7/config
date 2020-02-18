function update_terraform
  set install_dir "$HOME/.local/bin"

  if ! curl -s https://releases.hashicorp.com/index.json > /tmp/tf_releases
    echo "Can't fetch new release"
  end

  if ! command -sq terraform 
    echo "Terraform not installed"
    set current_version "not installed"
  else
    set current_version (terraform -v | head -1 | grep -Po '(\d+\.){2}\d+')
  end
  echo "Current version is $current_version"

  set newest_version (cat /tmp/tf_releases | jq --raw-output '.terraform.versions | keys_unsorted | .[]' | grep -Px '(\d+\.){2}\d+' | sort -Vr | head -1)
  echo "Newest version is $newest_version"

  if test "$newest_version" != "$current_version"
    echo "Version mismatch. Updating to newest version."
    if test "$install_dir/terraform" != (which terraform)
      echo "Terraform wasn't installed in $install_dir"
      exit 1
    end
    cat /tmp/tf_releases | jq --raw-output '.terraform.versions["0.12.20"].builds | map(select(.os == "linux")) | map(select(.arch == "amd64")) | .[0] | .url' | xargs curl > /tmp/tf.zip
    rm "$install_dir/terraform"
    unzip /tmp/tf.zip -d "$install_dir"
    printf "\n\nInstalled version:\n"
    terraform -version
  else
    echo "Newest version already installed. Nothing todo."
  end
end