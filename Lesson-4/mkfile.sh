#!/bin/bash

mkdir -p ~/20{10..17}/{01..12}

for i in {2010..2017}
 do
  for j in {01..12}
   do
      for n in {01..05}
	do
	 echo "файл $n" > ~/$i/$j/$n.txt  
	done
       done
      done
    