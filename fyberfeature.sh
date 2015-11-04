#!/bin/bash
# checkout fyber feature

UPSTREAM="$1"
BRANCH="$2"
MYREMOTE="$3"
MYBRANCH="$4"

git fetch $MYREMOTE && \
git fetch $UPSTREAM && \
git checkout -b $BRANCH $MYREMOTE/$BRANCH || \
git checkout $BRANCH && \
git merge $UPSTREAM/$BRANCH && \
git checkout -b $MYBRANCH && \
# git push -u $MYREMOTE $MYBRANCH && \
bundle install && \
bundle exec pod install
