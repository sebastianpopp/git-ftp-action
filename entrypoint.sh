#!/bin/sh

set -eu

# Deploy
git ftp push --user $FTP_USER --passwd $FTP_PWD $FTP_DEST
