function pdfbookmarks -d "Dump bookmarks from a PDF (pdftk format)" --argument-names SOURCEFILE OUTFILE
    if set --query OUTFILE
        set OUTFILE "bookmarks.txt"
    end
    pdftk $SOURCEFILE dump_data_utf8 output $OUTFILE
end
