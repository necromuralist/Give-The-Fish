set --export ALTERNATE_EDITOR ""
set --export EDITOR "emacsclient --create-frame"
set --export VISUAL "emacsclient --create-frame --alternate-editor emacs"

# for extra docker build features (like smarter pip caching)
set --export DOCKER_BUILDKIT 1

# for clearing the startup restore session
# so firefox doesn't try and open previous pages on startup
set --export MOZILLA_PROFILE "$HOME/snap/firefox/common/.mozilla/firefox/mg8ry5cl.default"

# R Downloads
set --export R_LIBS ~/.local/lib/R/library/

# wake monstery server
set --export ATHENA "04:92:26:c3:a6:c7"

# monstery LAN
set --export APOLLO "192.168.86.172"

# add to the path

# https://fishshell.com/docs/current/cmds/fish_add_path.html
fish_add_path $HOME/bin

# check the vpn (requires the installation of the proton-vpn command-line command)
if status --is-interactive
  protonvpn-cli status
end
