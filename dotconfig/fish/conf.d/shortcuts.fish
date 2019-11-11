# System commands
abbr -a -g ip ip -c
abbr -a -g userctl systemctl --user
abbr -a -g sctl sudo systemctl
abbr -a -g ll ls -lah
abbr -a -g vim nvim
abbr -a -g v nvim

# Git
abbr -a -g g git
abbr -a -g gt git status
abbr -a -g gu git pull --rebase --autostash
abbr -a -g gp git push
abbr -a -g gc git commit
abbr -a -g gca git commit --amend
abbr -a -g ga git add
abbr -a -g gch git checkout
abbr -a -g gl git log

# podman
abbr -a -g p podman
abbr -a -g pps podman ps
abbr -a -g ppsa podman ps -a
abbr -a -g pc podman-compose

# docker
abbr -a -g d docker
abbr -a -g dps docker ps
abbr -a -g dpsa docker ps -a
abbr -a -g dc docker-compose


# Terraform
abbr -a -g tf terraform
