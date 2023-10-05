function dimleftmonitor -d "Set HDMI-0 brightness" \
    --argument-names BRIGHTNESS OUTPUT

  # -z : test for zero (empty) string

  if test -z $OUTPUT
      set OUTPUT "HDMI-0"
  end

  if test -z $BRIGHTNESS
      set BRIGHTNESS 0
  end
  
  # xrandr --output $OUTPUT --brightness $BRIGHTNESS --auto
  dim_monitor $OUTPUT $BRIGHTNESS
end
