function mount-data --argument-names device name folder --description "Mount an encrypted drive."
    set ERROR 1
    # set up the block-file for the device to mount
    if test -z $device
        set device "sdb1"
    end

    set DEVICE_PATH "/dev/$device"
    
    if not test -b $DEVICE_PATH
        echo "'$DEVICE_PATH' is not a valid block-device"
        mount-data-help
        return $ERROR
    end

    echo "Using Device: $DEVICE_PATH"

    # set up the name to map the device to
    if test -z $name
        set name "monkeymount"
    end

    echo "Device Mapping: $name"

    # set up the folder to mount the drive to
    if test -z $folder
        set folder "irvin"
    end

    set MOUNT_PATH "/media/$folder"

    if set COUNT (count (path normalize $MOUNT_PATH/*))
        echo "$MOUNT_PATH not empty, not mounting"
        return $ERROR
    end

    if not test -d $MOUNT_PATH
        echo "Creating '$MOUNT_PATH'"
        sudo mkdir --parents $MOUNT_PATH
    end

    echo "Mounting at: $MOUNT_PATH"

    # mount the drive
    echo
    echo "Mounting External Data Drive"
    
    sudo cryptsetup open $DEVICE_PATH $name
    
    sudo mount /dev/mapper/$name $MOUNT_PATH
    
end
