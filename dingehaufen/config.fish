set --export ALTERNATE_EDITOR ""
set --export EDITOR "emacsclient --create-frame"
set --export VISUAL "emacsclient --create-frame --alternate-editor emacs"

# for extra docker build features (like smarter pip caching)
set --export DOCKER_BUILDKIT 1

# R Downloads
set --export R_LIBS ~/.local/lib/R/library/


        
# add to the path

# https://fishshell.com/docs/current/cmds/fish_add_path.html
fish_add_path $HOME/bin

# check the vpn (requires the installation of the proton-vpn command-line command)
if status --is-interactive
  protonvpn-cli status
end
