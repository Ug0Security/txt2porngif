type=$1
prompt=$2
seed="$3"
subseed=$(shuf -i 1000000000-9999999999 -n 1)

if [ -z $seed ]
then 
seed=$(shuf -i 1000000000-9999999999 -n 1)
fi

curl -sk https://editor.imagelabs.net/txt2img -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8" -H "X-Requested-With: XMLHttpRequest"  -d "{\"prompt\":\"$prompt,\",\"seed\":\"$seed\",\"subseed\":\"$subseed\",\"subseed_strength\":0.1,\"cfg_scale\":8,\"width\":512,\"height\":512,\"tiling\":false,\"negative_prompt\":\"lowres, text, error, cropped, worst quality, low quality, jpeg artifacts, ugly, duplicate, morbid, mutilated, out of frame, extra fingers, mutated hands, poorly drawn hands, poorly drawn face, mutation, deformed, blurry, dehydrated, bad anatomy, bad proportions, extra limbs, cloned face, disfigured, gross proportions, malformed limbs, missing arms, missing legs, extra arms, extra legs, fused fingers, too many fingers, long neck, username, watermark, signature\",\"restore_faces\":true,\"model\":\"$type\",\"site\":\"PornLabs.net\",\"pose\":\"None\"}" > test$subseed.json
task=$(jq .task_id test$subseed.json | tr -d '"')
echo "Task (seed-subseed): $task ($seed-$subseed)"

if [ $task == "null" ];
then
echo "Crafting Failed"
cat test$subseed.json
exit
fi

sleep 5

curl -sk https://editor.imagelabs.net/progress -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8"  -H "X-Requested-With: XMLHttpRequest" -d "{\"task_id\":\"$task\"}" > result$subseed.json 
url=$(jq .final_image_url result$subseed.json | tr -d '"')

if [ $url == "null" ];
then 
echo "Not ready yet..."
sleep 5
curl -sk https://editor.imagelabs.net/progress -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8"  -H "X-Requested-With: XMLHttpRequest" -d "{\"task_id\":\"$task\"}" > result$subseed.json 
url=$(jq .final_image_url result$subseed.json | tr -d '"')
fi

if [ $url == "null" ];
then 
echo "Not ready yet..."
sleep 5
curl -sk https://editor.imagelabs.net/progress -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8"  -H "X-Requested-With: XMLHttpRequest" -d "{\"task_id\":\"$task\"}" > result$subseed.json 
url=$(jq .final_image_url result$subseed.json | tr -d '"')
fi
if [ $url == "null" ];
then 
echo "Not ready yet..."
sleep 5
curl -sk https://editor.imagelabs.net/progress -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8"  -H "X-Requested-With: XMLHttpRequest" -d "{\"task_id\":\"$task\"}" > result$seed.json 
url=$(jq .final_image_url result$seed.json | tr -d '"')
fi

if [ $url == "null" ];
then 
echo "Not ready yet..."
sleep 5
curl -sk https://editor.imagelabs.net/progress -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8"  -H "X-Requested-With: XMLHttpRequest" -d "{\"task_id\":\"$task\"}" > result$subseed.json 
url=$(jq .final_image_url result$subseed.json | tr -d '"')
fi

if [ $url == "null" ];
then 
echo "Not ready yet..."
sleep 5
curl -sk https://editor.imagelabs.net/progress -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8"  -H "X-Requested-With: XMLHttpRequest" -d "{\"task_id\":\"$task\"}" > result$subseed.json 
url=$(jq .final_image_url result$subseed.json | tr -d '"')
fi

if [ $url != "null" ];
then
rm result$subseed.json 
rm test$subseed.json 

curl -sk $url -o test-$seed-$subseed.png
cp test-$seed-$subseed.png ./images/test-$seed-$subseed.png
#echo "everthing is ok, extending .."
#curl -sI https://www7.lunapic.com/editor/?action=virtual-border > cooks$seed
#icon=$(cat cooks$seed | grep icon | grep -o -P '(?<=icon_id=).*(?=; path)') 
#echo "ICON : $icon"
#color=$(cat cooks$seed | grep acolor | grep -o -P '(?<=acolor=).*(?=; path)') 
#echo "Color : $color"
#curl -sk -H "Cookie: icon_id=$icon; acolor=$color; srv=www7.lunapic.com;" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -F "upload-file=@test$seed.png" -F 'savenav=' -F "MAX_FILE_SIZE=50000000" -F "action=upload-now" -F "postaction=virtual-border" -F "canvassize=1700" -F "justloaded=1" "https://www7.lunapic.com/editor/" > ext$seed.txt
#urlext=$(cat ext$seed.txt | grep "do-not" | grep -o -P '(?<=img src=).*(?= alt=)')
#if [ -z "$urlext"  ];
#then
#echo "Waiting extending.."
#sleep 5
#curl -sk -H "Cookie: icon_id=$icon; acolor=$color; srv=www7.lunapic.com;" "https://www7.lunapic.com/editor/?action=virtual-border" > ext$seed.txt
#urlext=$(cat ext$seed.txt | grep "do-not" | grep -o -P '(?<=img src=).*(?= alt=)')
#fi
#echo "URL EXT : $urlext"
#curl -sk $urlext -o ext$seed.png

else
echo "Crafting Failed"
echo "DEBUG"
cat test$subseed.json
fi
