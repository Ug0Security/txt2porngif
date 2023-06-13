echo "Prompt : $2"
echo " Crafting imgs.."
seed=$(shuf -i 1000000000-9999999999 -n 1)
proxychains -q bash txt2imggif.sh "$1" "$2" "$seed"&
proxychains -q bash txt2imggif.sh "$1" "$2" "$seed"&
proxychains -q bash txt2imggif.sh "$1" "$2" "$seed"&
proxychains -q bash txt2imggif.sh "$1" "$2" "$seed"&
proxychains -q bash txt2imggif.sh "$1" "$2" "$seed"&
wait
echo "Crafting GIF.."
convert -limit memory 3MB -delay 100 -loop 0 *.png test$seed.gif
sleep 3
#rm test*.png
display test$seed.gif
