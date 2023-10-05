function undimleftmonitor -d "Undim the Left Monitor" \
    --argument-names OUTPUT

      if test -z $OUTPUT
          set OUTPUT "HDMI-0"
      end

      dimleftmonitor 1 $OUTPUT
end
