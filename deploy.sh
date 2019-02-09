#!/usr/bin/env bash
set -e

echo $TRAVIS_BUILD_DIR $TRAVIS_BRANCH
exit 0

rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/ travisaw@travisawagner.com:/home/travisaw/travisaw.com/test/song-lyrics-password-generator
