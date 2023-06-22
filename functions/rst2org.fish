# wrap option from https://stackoverflow.com/questions/62967265/word-to-markdown-via-pandoc-prevent-line-breaks-in-paragraphs
function rst2org -d "Convert rst file to org" --argument-names sourcefile
    set target $(path change-extension org $sourcefile)
    pandoc --standalone $sourcefile --output $target --wrap=none
end
