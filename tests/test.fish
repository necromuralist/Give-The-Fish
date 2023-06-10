#! /usr/bin/env fish

set ERROR "\x1b[31;1m\t%s\n\x1b[0m"
set TABBED "\t%s\n"

set BOLDED "\t\x1b[30;1m%s\x1b[0m%s\n"

# since this is a fake function it needs to be sourced
# real functions will be available via fish
. functions/mocktest.fish

# this is going to replace ~file~
function faker
  echo "not ls"
end

# this replaces file with faker
# then unsets it
# if you don't erase it
# then the other function will still use the alias
function tester
    alias file=faker
    mockery
    functions -e file
end

# this doesn't alias "file"
# so the output should be an error message from the real file command
function untester -a name
  mockery $name
end

# functions get passed in as strings (I think)
# ~eval~ will interpret the string it's given as a command and its arguments
function expect --argument-names to_test -a expected
    if test (string match $expected (eval $to_test))
        printf $TABBED "'$to_test' passed"
    else
        printf $ERROR "'$to_test' failed"
        printf $BOLDED "Expected: " "$expected"
        printf $BOLDED "Actual: " "$(eval $to_test)"
    end    
end

expect tester "not ls"
expect "untester non-existent-file.txt " "not ls"
