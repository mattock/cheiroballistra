#!/bin/bash
#
# Run from backups directory:
#
# ../gitify.sh

ls Greek*.xml|while read FILE; do

    TIMESTAMP=`echo $FILE|cut -d "-" -f 2|cut -d "." -f 1`

    gzip $FILE
    mv $FILE.gz wiki-backup.xml.gz
    git add wiki-backup.xml.gz
    git commit -m "Added wiki backup, timestamp $TIMESTAMP"
done
