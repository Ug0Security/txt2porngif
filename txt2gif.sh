echo "Prompt : $2"
echo " Crafting imgs.."
proxychains -q bash txt2imggif.sh "$1" "$2" &
proxychains -q bash txt2imggif.sh "$1" "$2" &
proxychains -q bash txt2imggif.sh "$1" "$2" &
wait
echo "Crafting GIF.."
convert -limit memory 3MB -delay 100 -loop 0 *.png test.gif
sleep 3
rm test*.png
display test.gif
