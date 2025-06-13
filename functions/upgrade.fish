function upgrade
    sudo apt-fast update --yes
    # sudo apt list --upgradeable -a
    sudo apt-get --just-print upgrade
    sudo apt-fast full-upgrade --yes
    sudo apt-get autoremove --yes
end
