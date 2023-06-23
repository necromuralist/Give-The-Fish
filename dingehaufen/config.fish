set -x ALTERNATE_EDITOR ""
set -x EDITOR "emacsclient -c"
set -x VISUAL "emacsclient -c -a emacs"

# wake monstery server
set -x ATHENA "04:92:26:c3:a6:c7"

# monstery LAN
set -x APOLLO "192.168.86.172"

# for extra docker build features (like smarter pip caching)
set -x DOCKER_BUILDKIT 1

# for clearing the startup restore session
# so firefox doesn't try and open previous pages on startup
set -x MOZILLA_PROFILE "$HOME/snap/firefox/common/.mozilla/firefox/mg8ry5cl.default"

# R Downloads
set -x R_LIBS ~/.local/lib/R/library/

# add to the path

# https://fishshell.com/docs/current/cmds/fish_add_path.html
fish_add_path $HOME/bin



# check the vpn
if status --is-interactive
  protonvpn-cli status
end

# nikola
abbr --add -- n "nikola"
abbr --add -- nb "nikola build"
abbr --add -- nbs 'nikola build;nikola serve'
abbr --add -- ngd "nikola github_deploy"

# git wit it
abbr --add -- add "git add"
abbr --add -- gaa "git add -A"
abbr --add -- amend "git commit --amend"
abbr --add -- commit "git commit"
abbr --add -- push "git push"
abbr --add -- gcm "git commit --message"
abbr --add -- g "git"
abbr --add -- state "git status -sb"
abbr --add -- branches "legit branches"

# sync and status are built-in linux utilities so we need different names
# switch is a function control statement
abbr --add -- gstat "git status"
abbr --add -- gsync "legit sync"
abbr --add -- gswitch "legit switch"
