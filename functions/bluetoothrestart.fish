function bluetoothrestart
  sudo rmmod btusb
  sudo modprobe btusb
end
