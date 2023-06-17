# taken from https://github.com/fish-shell/fish-shell/issues/9285#issuecomment-1281498635
complete -x choose -a '(complete -C "__fish_command_without_completions "(commandline --current-token --cut-at-cursor))'
