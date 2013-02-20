#! /bin/bash

echo "What's the PID for images?"
read pid

echo "How many images?"
read number

output_file='/Users/wkeat/Desktop/img_output'

echo "PID: $pid"
for i in $(seq 1 $number)
do
    echo "https://www.mumgo.com.au/images/prods/$pid/${pid}_event_hd.jpg" >> $output_file
    echo "https://www.mumgo.com.au/images/prods/$pid/${pid}_${i}.jpg" >> $output_file
    echo "https://www.mumgo.com.au/images/prods/$pid/${pid}_${i}_list.jpg" >> $output_file
    echo "https://www.mumgo.com.au/images/prods/$pid/${pid}_${i}_hd.jpg" >> $output_file
    echo "https://www.mumgo.com.au/images/prods/$pid/${pid}_${i}_thumb.jpg" >> $output_file
done
