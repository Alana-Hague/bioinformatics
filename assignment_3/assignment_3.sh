#!/bin/bash

# Task 1
sed 's/Zoo//' ./pandas.txt > ./task1.txt

# Task 2
awk '{print $1,$4,$2}' ./pandas.txt > ./temp.txt && sort -k3 ./temp.txt > ./task2.txt

# Task 3
awk '{print $5}' ./pandas.txt > temp.txt && sort -k1 ./temp.txt > ./task3.txt

# Task 4
sed 's/female/F/g' ./pandas.txt > temp.txt && sed 's/male/M/g' ./temp.txt > ./task4.txt

# Task 5
grep -c "October" ./pandas.txt > ./task5.txt
# ANSWER IS 2; output to a new file anyway

# Task 6
grep -n "a" ./pandas.txt > ./task6.txt  # using sed would be a better command here, as shown below
#sed -e 's/^/prefix/' ./pandas.txt > ./task6.txt

# Task 7
sed -n 1p ./pandas.txt > ./task7.txt && 
sed -n 6p ./pandas.txt >> ./task7.txt && 
sed -n 17p ./pandas.txt >> ./task7.txt

# Task 8
grep -h "X" ./pandas.txt > ./task8.txt && grep -h "x" ./pandas.txt >> ./task8.txt

# Task 9
awk '{print $5}' ./pandas.txt > ./temp.txt && uniq -u ./temp.txt > ./task9.txt

# Task 10
#awk '$4>2013{print $1, $4}' ./pandas.txt > ./temp.txt &&
#sort -k 2n ./temp.txt > ./task10.txt
sort -k4 -n pandas.txt | awk '$4 <= 10' | awk '{print $1, $4}' > ./task10.txt
