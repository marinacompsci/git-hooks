#!/usr/bin/env bash

# RUN THIS INSIDE .git/hooks OF YOUR GIT REPO

cat extra_words >> $HOME/.hunspell_en_US

echo "Symlink files? [y/n]"
read run_symlink

if [[ "$run_symlink" == "y" ]]; then
    ln -s $HOME/developer/git-hooks/commit-msg .git/hooks
    ln -s $HOME/developer/git-hooks/pre-commit .git/hooks
fi
