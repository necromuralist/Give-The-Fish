function mount-drives --argument-names "device"
    mountcryfs
    mountdata $device
end
