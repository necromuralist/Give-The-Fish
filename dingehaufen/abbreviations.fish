# nikola
abbr --add -- n "nikola"

abbr --add -- npost nikola new_post --format orgmode --title
abbr --add -- npage nikola new_page --format orgmode --title

abbr --add -- nb "nikola build"
abbr --add -- nbs 'nikola build; nikola serve'
abbr --add -- nauto "nikola auto"
abbr --add -- ngd "nikola github_deploy"

# git wit it
abbr --add -- g "git"

abbr --add -- add "git add"
abbr --add -- gaa "git add -A"

abbr --add -- commit "git commit"
abbr --add -- gcm "git commit --message"
abbr --add -- amend "git commit --amend"

abbr --add -- push "git push"
abbr --add -- gsync "legit sync"
abbr --add -- publish "legit publish"

abbr --add -- branches "legit branches"
abbr --add -- gswitch "legit switch"
abbr --add -- branchls "git ls-tree --name-only -r"
abbr --add -- branchlog "git log --oneline --abbrev-commit --all --graph --decorate --color"
abbr --add -- branchlogall "git log --branches --graph"
abbr --add -- renamebranch "git branch -m"

abbr --add -- codechanges "git log -p"
abbr --add -- logdiff "git log -p"

# pass
abbr --add -- syncpass "pass git pull; pass git push"

# grep
abbr --add -- grepr "grep --color=always"
