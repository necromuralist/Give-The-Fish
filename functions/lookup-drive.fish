function lookup-drive
  lsusb | grep "Western"
  set -l device (sudo fdisk -l | grep "Elements" -B 1 | grep -o '/dev\/[a-z]*' | grep -o "[a-z]*\$")
  lsblk -e7 | grep $device
end
