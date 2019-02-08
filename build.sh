#!/usr/bin/env bash
set -e

LOCALPATH='./'
REMOTEPATH='/travisaw.com/test/song-lyrics-password-generator'

lftp -f "
set dns:order 'inet'
open -u $FTP_USER,$FTP_PASS $FTP_SITE
set ssl:verify-certificate no
mirror -R $LOCALPATH $REMOTEPATH
bye
"
