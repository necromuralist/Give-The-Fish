function upgrade
    sudo apt-fast update --yes
    sudo apt list --upgradeable -a
    sudo apt-fast full-upgrade --yes
    sudo apt-get autoremove --yes
end
