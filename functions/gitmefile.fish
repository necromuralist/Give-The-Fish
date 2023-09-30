function gitmefile -d "Checkout folder or file from another branch" \
    --argument-names BRANCH PATH_TO_FILE

  git checkout $BRANCH -- $PATH_TO_FILE

  if test $status -ne 0
      echo "There was a git error using your arguments: branch='$BRANCH' path='$PATH_TO_FILE'."
  
      string match --regex --quiet "(?<matched>$BRANCH)" (git branch)
      if test -z $matched
          echo "No branch matches '$BRANCH'."
      end
  end

  end
