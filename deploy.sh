#!/usr/bin/env bash
set -e

deployment() {
  DEPLOY_PATH="/home/travisaw/travisaw.com/test/dev/song-lyrics-password-generator"
  rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/ -a --relative $DEPLOY_PATH travisaw@travisawagner.com:/
}

deployment
