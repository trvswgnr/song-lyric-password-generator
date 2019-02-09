#!/usr/bin/env bash
set -e

rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/ travisaw@travisawagner.com:/home/travisaw/travisaw.com/test/dev/song-lyrics-password-generator
