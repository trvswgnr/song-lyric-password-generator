#!/usr/bin/env bash
set -e

deployment() {
  DEPLOY_PATH="/home/travisaw/travisaw.com/test/dev/song-lyrics-password-generator"
  mkdir -p $DEPLOY_PATH
  rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/ travisaw@travisawagner.com:$DEPLOY_PATH
}

deployment
