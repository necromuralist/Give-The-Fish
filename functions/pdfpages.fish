#! /usr/bin/env fish

function pdfpages --argument-names source_pdf target_pdf pages -d "Extract pages from a pdf"

    qpdf --empty --pages $source_pdf $pages -- $target_pdf

    if test $status -ne 0
        echo "source_pdf = $source_pdf"
        echo "target_pdf = $target_pdf"
        echo "pages = $pages"
    end
end
