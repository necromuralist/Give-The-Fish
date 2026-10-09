- Export existing bookmarks from a pdf (UTF-8 Version)

`pdftk {{input.pdf}} dump_data_utf8 output {{bookmarks.txt}}`

- Import pdftk-formatted bookmarks (from dump_data_utf8)

`pdftk {{to-update.pdf}} update_info_utf8 {{bookmarks.txt}} output {{updated.pdf}}`
