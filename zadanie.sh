#!/bin/bash

text=`grep "highest occupied" 00_15_1101_75.out`

counter=`grep "highest occupied" 00_15_1101_75.out -c`

for ((i=0;$i<counter;i++)); do
	high=${text:$[57*(i+1)+2*6*i+1*i+4*i]:6}
	low=${text:$[67*(i+1)+6*i+i*1]:6}
	
	result=`echo $low-$high | bc -l`
	echo $[$i+1]. $result
	echo $[$i+1]. $result >> wynik_bg.txt
done

echo "Uruchamiam pythona..."
echo `python zadanie.py`
