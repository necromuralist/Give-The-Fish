function upgrade
    sudo apt update --yes
    sudo apt list --upgradeable -a
    sudo apt full-upgrade --yes
    sudo apt autoremove --yes
end
