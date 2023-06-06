# generate a random hexadecimal string
function randomhex -d "random hex string" --argument-names digits
  if test -n "$digits" # then an argument was passed in
    if test (string match --regex "^[0-9]+\$" $digits)
      set BYTES $(math ceil $digits/2)
      else # the argument isn't an integer
        printf "\t%s\n" \
         "Output a random hexadecimal number" \ \
         "Usage:" \ \
         "randomhex <digits>" \ \
         "Optional argument:" \
         " - Number of digits (will round up to even number)" \
         "   Argument must be an integer (default=8)."
         return
      end # if is-integer check
    else # Set our bytes so we have 8 digits (double the bytes)
      set BYTES 4
    end
    echo $(openssl rand -hex $BYTES)
end
