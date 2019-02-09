#!/usr/bin/env bash
set -e

deploy() {
  DEPLOY_PATH="/home/travisaw/travisaw.com/test/dev/song-lyrics-password-generator"
  rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/ --exclude-from='./.deployignore' travisaw@travisawagner.com:$DEPLOY_PATH
}

deploy
