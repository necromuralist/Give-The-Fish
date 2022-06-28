function fastestvpn
    protonvpn-cli disconnect
    protonvpn-cli connect --fastest
    protonvpn-cli status
end
