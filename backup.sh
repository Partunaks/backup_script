#!/bin/bash
tar -cf Doc_backup.tar Documents/
bzip2 -z Doc_backup.tar
cp Doc_backup.tar.bz2 Yandex.Disk
cp Doc_backup.tar.bz2 Dropbox
rm -rf Doc_backup.tar Doc_backup.tar.bz2
yandex-disk sync
echo "Yandex-disk sync is finished!"
dropbox status
