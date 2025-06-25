<<<<<<< Updated upstream
function upgrade --description "Upgrade packages."
    function boldblue
        set_color --bold blue
        echo $argv
        set_color normal
    end

    boldblue Checking apt
||||||| Stash base
function upgrade
=======
#! /usr/bin/env fish

function upgrade
>>>>>>> Stashed changes
    sudo apt-fast update --yes
    sudo apt-get --just-print upgrade

    boldblue Upgrading apt
    sudo apt-fast full-upgrade --yes
    sudo apt-get autoremove --yes

    boldblue Updating snaps
    sudo snap refresh

    boldblue Updating flatpak
    flatpak update --assumeyes

    boldblue Uninstalling unused flatpaks
    flatpak uninstall --unused --assumeyes
end
