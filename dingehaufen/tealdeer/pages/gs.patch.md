- Convert PDF text to black and white (not grayscale)

`gs -sDEVICE=pdfwrite -dBlackText -dBlackVector -dNOPAUSE -dBATCH -sOutputFile={{output-file-name}} {{pdf-input-file-name}}`

- Reduce PDF File Size, possibly more than the version up above

`gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages -dCompressFonts=true -sOutputFile={{output-file-name}} {{input-file-name}}`
