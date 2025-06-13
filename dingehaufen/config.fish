set --export ALTERNATE_EDITOR ""
set --export EDITOR "emacsclient --create-frame"
set --export VISUAL "emacsclient --create-frame --alternate-editor emacs"

# for extra docker build features (like smarter pip caching)
set --export DOCKER_BUILDKIT 1

# R Downloads
set --export R_LIBS ~/.local/lib/R/library/

# use `update-alternatives --config pager`
# to change from `less` to `most` instead
# # use the most pager instead of less
# set -x PAGER most

# path additions moved to extra_paths.fish

  # waiting for proton-vpn to get this working again.
# # check the vpn (requires the installation of the proton-vpn command-line command)
# if status --is-interactive
#   protonvpn-cli status
# end
