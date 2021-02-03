#!/bin/bash
LOGFILE=/var/log/auth.log 
tail -0f $LOGFILE | while read LINE 
  do
   echo $LINE | grep -e 'Invalid user'  
  done

