#!/usr/bin/env bash
set -e

deploy() {
  DEVELOPMENT_PATH="/home/travisaw/travisaw.com/test/dev/song-lyrics-password-generator"
  PRODUCTION_PATH="/home/travisaw/travisaw.com/test/pro/song-lyrics-password-generator"
  DEPLOY_PATH=$DEVELOPMENT_PATH

  if [ $TRAVIS_BRANCH = "master" ]; then
    DEPLOY_PATH=$PRODUCTION_PATH
  fi

  rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/ --exclude-from='./.deployignore' travisaw@travisawagner.com:$DEPLOY_PATH
}

deploy
