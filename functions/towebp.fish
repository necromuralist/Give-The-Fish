#! /usr/bin/env fish

function towebp -d "Convert image files to web with cweb"

    for SOURCE_IMAGE in $argv
        set OUTPUT (path change-extension webp $SOURCE_IMAGE)
        cwebp $SOURCE_IMAGE -o $OUTPUT
    end
end
