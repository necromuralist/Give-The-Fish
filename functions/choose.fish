# Choose random lines from a file #
function choose -d "Random line from a file." --argument-names filename lines

  # a bold-red line for error messages
  set ERROR "\x1b[31;1m\t%s\n\n\x1b[0m"

  # assume something bad (0) until the checks change it
  set OKAY 0

  # check the "lines" argument
  if ! test -n "$lines"
    set lines 1
    set OKAY 1
  else if ! test (string match --regex "^[0-9]+\$" $lines)
    set OKAY 0
    printf $ERROR "Not a valid number of lines: '$lines'"
  else
    set OKAY 1
  end

  # check the filename argument and pull the line if okay
  if test $OKAY -ne 0; and test (string match "*text*" (file "$filename"))
     shuf -n $lines $filename
  else
    if ! test -n "$filename"
      printf $ERROR  "**Missing Filename**"
    else if test $OKAY -ne 0
      printf $ERROR "Invalid File: '$filename'"
    end
    set OKAY 0
  end # check filename

  # if one of the arguments was bad emit a help message
  if test $OKAY -eq 0     
    printf "\t%s\n" \
           "Output a random line or lines from a text file." \ \
           "Usage:" \ \
           "    choose <filename> [<number of lines>]"
  end # help message
end # end choose
