abbr --add -- word "random choice (cat ~/.local/share/choice/words.txt)"

abbr --add -- motif "zcat \
    ~/.local/share/choice/motif-index.txt.gz | shuf -n1"

abbr --add -- imdb "zcat /media/irvin/datasets/imdb/movie.basics.tsv.gz | shuf -n1"
