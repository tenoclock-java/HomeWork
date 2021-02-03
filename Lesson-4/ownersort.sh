#!/bin/bash
MFOLDER=$1



makefolder()
{
  if ! [ -d $MFOLDER/$1/ ]; then
    mkdir $MFOLDER/$1/
  fi
}

copyfile()
{
  local OWNER=$1
  local FILENAME=$2
  if ! [ -f $MFOLDER/$OWNER/$FILENAME ]; then
    cp $MFOLDER/$FILENAME $MFOLDER/$OWNER/
	chown $OWNER $MFOLDER/$OWNER/$FILENAME
  fi
}

ls -la $MFOLDER | grep -v "^total" | grep -v "^d" | cut -d ' ' -f4 | uniq | while read LINE1
  do
    makefolder $LINE1
  done

ls -la $MFOLDER | grep -v "^total" | grep -v "^d" | cut -d ' ' -f 4,14 | while read LINE2
  do 
    copyfile $LINE2
  done
