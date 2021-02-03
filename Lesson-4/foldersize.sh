#!/bin/bash
date | cut -d ' ' -f 2,4,7 >>  /var/log/homesize.log
sudo du -sh /home/* >> /var/log/homesize.log
echo >> /var/log/homesize.log

