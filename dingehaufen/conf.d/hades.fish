set --export MOZILLA_PROFILE "$HOME/snap/firefox/common/.mozilla/firefox/mg8ry5cl.default"

# wake monstery server
set --export ATHENA "04:92:26:c3:a6:c7"

# monstery LAN
set --export APOLLO "192.168.86.172"

# check the vpn (requires the installation of the proton-vpn command-line command)
# if status --is-interactive
#   protonvpn-cli status
# end

function vterm_printf;
    if begin; [  -n "$TMUX" ]  ; and  string match -q -r "screen|tmux" "$TERM"; end
        # tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$argv"
    else if string match -q -- "screen*" "$TERM"
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$argv"
    else
        printf "\e]%s\e\\" "$argv"
    end
end
