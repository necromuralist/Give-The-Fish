set --export ALTERNATE_EDITOR ""
set --export EDITOR "emacsclient --create-frame"
set --export VISUAL "emacsclient --create-frame --alternate-editor emacs"

# for extra docker build features (like smarter pip caching)
set --export DOCKER_BUILDKIT 1

# R Downloads
set --export R_LIBS ~/.local/lib/R/library/
        
# path additions moved to extra_paths.fish
