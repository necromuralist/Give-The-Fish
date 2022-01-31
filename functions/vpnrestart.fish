function vpnrestart
  protonvpn-cli disconnect
  protonvpn-cli connect --fastest
end