function doc2pdf -d "Convert document to pdf with pandoc" --argument-names SOURCE HEADER
    set TARGET $(path change-extension pdf $SOURCE)

    if test -z $HEADER
        set HEADER ~/.config/fish/extras/pagella.tex
    end

    pandoc --standalone $SOURCE --output $TARGET --include-in-header $HEADER
end
