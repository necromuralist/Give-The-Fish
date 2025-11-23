- Remove background of PDF assuming the image density

`magick convert -density 300 {{path/to/input.pdf}} -white-threshold 80% {{path/to/output.pdf}}`
