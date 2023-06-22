function las
    ls --almost-all \
       --color \
       --dereference-command-line \
       --human-readable \
       -l $argv | \
        less --RAW-CONTROL-CHARS
end
