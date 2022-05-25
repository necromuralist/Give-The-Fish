function mountcryfs
  if test ! -d ~/documents/roku-chiji/tsusu
      echo "Mounting Roku-Chiji Cryfs"
      cryfs ~/.cryfs/roku-chiji ~/documents/roku-chiji
  else
      echo "Cryfs documents/roku-chiji already mounted"
  end
end
