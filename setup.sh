#!/usr/bin/env bash

# RUN THIS INSIDE .git/hooks OF YOUR GIT REPO

cat $HOME/developer/git-hooks/extra_words >> $HOME/.hunspell_en_US

echo "Symlink files? [y/N]"
read run_symlink

if [[ "$run_symlink" == "y" ]]; then
    echo "Symlink commit-msg? [y/N]"
    read prompt
    if [[ "$prompt" == "y" ]]; then
        ln -s $HOME/developer/git-hooks/commit-msg .git/hooks
    fi
    echo "Symlink pre-commit? [y/N]"
    read prompt
    if [[ "$prompt" == "y" ]]; then
        ln -s $HOME/developer/git-hooks/pre-commit .git/hooks
    fi
fi
