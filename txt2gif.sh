echo "Prompt : $2"
echo " Crafting imgs.."
proxychains -q bash txt2imggif.sh "$1" "$2" &
proxychains -q bash txt2imggif.sh "$1" "$2" &
proxychains -q bash txt2imggif.sh "$1" "$2" 
echo "Crafting GIF.."
sleep 3
convert -limit memory 3MB -delay 100 -loop 0 test*.png test.gif
rm test*.png
display test.gif
