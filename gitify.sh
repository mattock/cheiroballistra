#!/bin/bash

ls ../../backups/Greek*.xml.gz|while read FILE; do

    TIMESTAMP=`echo $FILE|cut -d "-" -f 2|cut -d "." -f 1`

    mv $FILE wiki-backup.xml.gz
    git add wiki-backup.xml.gz
    git commit -m "Added wiki backup, timestamp $TIMESTAMP"
done
