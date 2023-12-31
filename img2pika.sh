

seed=$(shuf -i 1000000000-9999999999 -n 1)

for i in $(ls *.png);
do
echo $i
bash img2vidpika.sh "$i" "$1"&
done
wait


for i in $(ls pika*.mp4);
do
echo file $i >> list3.txt
echo file $i >> list3.txt
echo file $i >> list3.txt
done
yes | ffmpeg -f concat -safe 0 -i list3.txt -c copy vids/pika.mp4 -hide_banner -loglevel error

rm *.png
rm list3.txt
