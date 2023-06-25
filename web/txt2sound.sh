echo "Crafting sound with prompt : $1"
seed=$(shuf -i 1000000000-9999999999 -n 1)
echo "Crafting sound with seed  : $seed"
path=$(python -W ignore txt2sound.py "$1" "$seed" | jq '.output.data[0][0].name' | tr -d '"')
echo "path : $path"
timestamp=$(date +%s)
wget -q https://haoheliu-audioldm-text-to-audio-generation.hf.space/file=$path -O ./sounds/test.mp4
cp ./sounds/test.mp4 ./sounds/$timestamp-$seed.mp4
