
seed=$(shuf -i 1000000000-9999999999 -n 1)
for i in $(ls *.mp4);
do
echo $i
bash vid2vidHD.sh "$i"&
done
wait


for i in $(ls testvidHD*.mp4);
do
echo file $i >> list2.txt
done
yes | ffmpeg -f concat -safe 0 -i list2.txt -c copy vids/outputHD.mp4 -hide_banner -loglevel error

rm *.mp4
rm list2.txt
