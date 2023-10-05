function dim_monitor -d "Set monitor brightness" \
    --argument-names OUTPUT BRIGHTNESS

  # -z : test for empty string
  if test -z $BRIGHTNESS
    set BRIGHTNESS 0
  end

  if test -z $OUTPUT
      echo "You must pass in the 'output' e.g. 'DVI-D-0'"
      echo "Usage: dim_monitor OUTPUT BRIGHTNESS"
   else
       xrandr --output $OUTPUT --brightness $BRIGHTNESS --auto
   end
end
