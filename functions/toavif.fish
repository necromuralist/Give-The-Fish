#! /usr/bin/env fish

function toavif --description 'Convert image files to avif with avifenc'

    for SOURCE_IMAGE in $argv
        set OUTPUT (path change-extension avif $SOURCE_IMAGE)
        avifenc $SOURCE_IMAGE -o $OUTPUT
    end
end
