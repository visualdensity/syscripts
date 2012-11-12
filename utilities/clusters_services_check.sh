node_start=2
node_end=9
url_check='web/bundle/mumgo/front/css/i/social-icons.png'

for i in `seq $node_start $node_end`
do 
    echo $i $(curl -s -I -k -v -H "Host: www.mumgo.com.au" https://10.11.0.$i/$url_check 2> /dev/null | grep Content-Length)
done
