#!/bin/sh
sum=0
#for i in 1 2 3 4 5 6 7 8 9 10
#for((j=1;j<=10;j++))
for j in `seq 1 100`
do
  sum=`expr $sum + $j`
done
echo "1부터 10까지의 합: "$sum
exit 0

