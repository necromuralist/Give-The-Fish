function dimrightmonitor
  if [ (count $argv) -gt 0 ]
    set BRIGHTNESS $argv[1]
  else
      set BRIGHTNESS 0
   end
 xrandr --output DVI-D-0 --brightness $BRIGHTNESS
end
