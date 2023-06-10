#! /usr/bin/env fish

. functions/mocktest.fish


function faker
  echo "not ls"
end

function tester
    alias file=faker
    smegma
    functions -e file
end

function untester
  smegma
end

if test (string match "not ls" (tester))
    echo "tester passed"
else
    echo "(tester) didin't match 'not ls'"
end

if test (string match "not ls" (untester))
    echo "untester passed"
else
    echo "(tester) didin't match 'not ls'"
end
