echo "Prompt : $2"
echo " Crafting imgs.."

if [ "$3" == "fixed" ]
then
if [[ ! -z "$4" ]]
then
seed=$4
else
seed=$(shuf -i 1000000000-9999999999 -n 1)
fi
fi

proxychains -q bash txt2imggif.sh "$1" "$2" "$seed"&
proxychains -q bash txt2imggif.sh "$1" "$2" "$seed"&
proxychains -q bash txt2imggif.sh "$1" "$2" "$seed"&
proxychains -q bash txt2imggif.sh "$1" "$2" "$seed"&
proxychains -q bash txt2imggif.sh "$1" "$2" "$seed"&
wait

echo "Crafting GIF.."
convert -limit memory 3MB -delay 500 -loop 0 *.png ./gif/test$seed.gif
sleep 1

echo "Crafting VID.."
for i in $(ls *.mp4);
do
echo file $i >> list.txt
done
yes | ffmpeg -f concat -safe 0 -i list.txt -c copy vids/output.mp4 -hide_banner -loglevel error


sleep 1
rm anim*.json
rm *.png
rm *.mp4
rm list.txt
#display test.gif
