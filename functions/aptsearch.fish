function aptsearch -d "Paging apt search" --argument-names keyword
    unbuffer apt search $keyword | less -R
end
