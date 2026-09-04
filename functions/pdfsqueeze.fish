function pdfsqueeze -d "Squeeze PDF" --argument-names INPUT SQUEEZED
  # a bold-red line for error messages
  set ERROR "\x1b[31;1m\t%s\n\n\x1b[0m"

  set OKAY 1

  if test -z "$INPUT"
    set OKAY 0 
    printf $ERROR "Need to pass an input filename."
  end

  if test -z "$SQUEEZED"
    set SQUEEZED "squozen"
  end

  set OUTPUT (path change-extension $SQUEEZED(path extension $INPUT) $INPUT)

  if test $OKAY -eq 1
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages -dCompressFonts=true -sOutputFile=$OUTPUT $INPUT
  else
    echo "SQUEEZED = $SQUEEZED"
    echo "INPUT = $INPUT"
    echo "OUTPUT = $OUTPUT"
    
    echo "COMMAND = gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages -dCompressFonts=true -sOutputFile=$OUTPUT $INPUT"
  end
end
