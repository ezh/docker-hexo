#!/bin/sh

umask 0000

git config --global user.name "$GIT_USER_NAME"
git config --global user.email "$GIT_USER_EMAIL"

test -n "$BEFORE_HEXO" && eval "$BEFORE_HEXO"
test "$1" = "loop" && echo Waiting forever for SIGTERM... && exec tail -f /dev/null
exec $@
