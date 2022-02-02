function mountdata --argument-names "device"
    if test -d /media/data/roku-chiji
        echo "WDData Already Mounted"
    else
        echo "Mounting External Data Drive"
        if test -n "$device"
            sudo cryptsetup open /dev/$device wddata
        else
            sudo cryptsetup open /dev/sdb1 wddata
        end
        sudo mount /dev/mapper/wddata /media/data
  end
end
