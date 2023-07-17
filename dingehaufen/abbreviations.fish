# nikola
abbr --add -- n "nikola"

abbr --add -- post nikola new_post --format orgmode --title
abbr --add -- page nikola new_page --format orgmode --title

abbr --add -- nb "nikola build"
abbr --add -- nbs 'nikola build; nikola serve'
abbr --add -- nauto "nikola auto"
abbr --add -- deploy "nikola github_deploy"

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
abbr --add -- fetch "git fetch --prune"

abbr --add -- state "git status -sb"
abbr --add -- gstat "git status"

abbr --add -- branches "legit branches"
abbr --add -- gswitch "legit switch"
abbr --add -- brls "git ls-tree --name-only -r"
abbr --add -- brlog "git log --oneline --abbrev-commit" \
    " --all --graph --decorate --color"
abbr --add -- brlogall "git log --branches --graph"
abbr --add -- renamebranch "git branch -m"
abbr --add -- merge "git merge"
abbr --add -- cob "git checkout -b"
abbr --add -- destroy "git branch -d"
abbr --add -- destroythegods "git push origin -d"

abbr --add -- codechanges "git log -p"
abbr --add -- logdiff "git log -p"
abbr --add -- gdiff "git diff"
abbr --add -- gdiffn "git diff --name-status"

# pass
abbr --add -- p "pass"
abbr --add -- pgs "pass git sync"

# grep
abbr --add -- grepr "grep --color=always"
