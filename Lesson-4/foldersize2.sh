#!/bin/bash
sudo du -sh /home/* | while read LINE
do
	FOLDER=$(echo $LINE | cut -d ' ' -f2)
	SIZE=$(echo $LINE | cut -d ' ' -f1)
	TODAY=$(date | cut -d ' ' -f 2,4,7)
	LOGFILE=$FOLDER/size.log
	echo $TODAY >> $LOGFILE
	echo Folder Size \= $SIZE >> $LOGFILE
	echo >> $LOGFILE
done
