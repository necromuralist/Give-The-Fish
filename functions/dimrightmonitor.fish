function dimrightmonitor -d "Set DVI-D-O brightess" \
    --argument-names BRIGHTNESS OUTPUT

  # -z : test for zero (empty) string

  if test -z $OUTPUT
      set OUTPUT "DVI-D-0"
  end

  if test -z $BRIGHTNESS
      echo "Setting BRIGHTNESS"
      set BRIGHTNESS 0
  end
  
  # xrandr --output $OUTPUT --brightness $BRIGHTNESS --auto
  dim_monitor $OUTPUT $BRIGHTNESS
end
