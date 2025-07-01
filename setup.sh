#!/usr/bin/env bash

# RUN THIS INSIDE .git/hooks OF YOUR GIT REPO

cat extra_words | xargs -I {} echo -e "*{}\\n#" | hunspell -d en_US -a

ln -s $HOME/developer/git-hooks/commit-msg .git/hooks
ln -s $HOME/developer/git-hooks/pre-commit .git/hooks
