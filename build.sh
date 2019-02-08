#!/bin/bash
abort() {
  local message=$1
  echo $message
  exit -1
}
[ -z $FTP_PASS ] && abort "FTP_PASS is undefined"
[ -z $FTP_USER ] && abort "FTP_USER is undefined"
[ -z $FTP_SITE ] && abort "FTP_SITE is undefined"
lftp -u $FTP_USER,$FTP_PASS $FTP_SITE \
  set ssl:verify-certificate no \
  -e 'mirror -c -e -R ~/ /travisaw.com/test-production/synth-patch-name-generator ; exit'
