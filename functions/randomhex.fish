# generate a random hexidecimal string
# See:
# https://www.openssl.org/docs/man1.1.1/man1/openssl-rand.html
# https://stackoverflow.com/a/53668354

function randomhex -d "random hex string" --argument-names digits

    if test -n "$digits" # then an argument was passed in
        if test (string match --regex "^[0-9]+\$" $digits)
            set BYTES $(math ceil $digits/2)
        else # the argument isn't an integer
            echo "Output a random hexidecimal number"
            echo
            echo "Usage:"
            echo
            echo "randomhex <digits>"
            echo
            echo "Optional argument:"
            echo " - Number of digits (will round up to even number)"
            echo "   Argument must be an integer (default=8)."
            return
         end # if is-integer check
     else
         # argument is 1/2 the number of digits output 
         set BYTES 4
    end
    echo $(openssl rand -hex $BYTES)
end
