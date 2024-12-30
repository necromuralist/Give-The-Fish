function losslesswebp --description 'Convert image files to lossless webp'

    for SOURCE_IMAGE in $argv
        set OUTPUT (path change-extension .z9.webp $SOURCE_IMAGE)
        cwebp -z 9 $SOURCE_IMAGE -o $OUTPUT
    end
end
