#! /bin/bash

echo "What's the PID for images?"
read pid

echo "How many images?"
read number

echo "PID: $pid"
for i in $(seq 1 $number)
do
    echo "https://www.mumgo.com.au/images/prods/$pid/${pid}_${i}.jpg"
    echo "https://www.mumgo.com.au/images/prods/$pid/${pid}_${i}_list.jpg"
    echo "https://www.mumgo.com.au/images/prods/$pid/${pid}_${i}_hd.jpg"
done


