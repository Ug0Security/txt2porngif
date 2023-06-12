type=$1
prompt=$2

seed=$(shuf -i 1000000000-9999999999 -n 1)
subseed=$(shuf -i 1000000000-9999999999 -n 1)

curl -sk https://editor.imagelabs.net/txt2img -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8" -H "X-Requested-With: XMLHttpRequest"  -d "{\"prompt\":\"$prompt,\",\"seed\":\"$seed\",\"subseed\":\"$subseed\",\"subseed_strength\":0.1,\"cfg_scale\":8,\"width\":512,\"height\":512,\"tiling\":false,\"negative_prompt\":\"lowres, text, error, cropped, worst quality, low quality, jpeg artifacts, ugly, duplicate, morbid, mutilated, out of frame, extra fingers, mutated hands, poorly drawn hands, poorly drawn face, mutation, deformed, blurry, dehydrated, bad anatomy, bad proportions, extra limbs, cloned face, disfigured, gross proportions, malformed limbs, missing arms, missing legs, extra arms, extra legs, fused fingers, too many fingers, long neck, username, watermark, signature\",\"restore_faces\":true,\"model\":\"$type\",\"site\":\"PornLabs.net\",\"pose\":\"None\"}" > test$seed.json
task=$(jq .task_id test$seed.json | tr -d '"')
echo "Task : $task"

if [ $task == "null" ];
then
echo "Crafting Failed"
cat test.json
exit
fi

sleep 5

curl -sk https://editor.imagelabs.net/progress -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8"  -H "X-Requested-With: XMLHttpRequest" -d "{\"task_id\":\"$task\"}" > result$seed.json 
url=$(jq .final_image_url result$seed.json | tr -d '"')

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
curl -sk https://editor.imagelabs.net/progress -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8"  -H "X-Requested-With: XMLHttpRequest" -d "{\"task_id\":\"$task\"}" > result$seed.json 
url=$(jq .final_image_url result$seed.json | tr -d '"')
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
curl -sk https://editor.imagelabs.net/progress -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8"  -H "X-Requested-With: XMLHttpRequest" -d "{\"task_id\":\"$task\"}" > result$seed.json 
url=$(jq .final_image_url result$seed.json | tr -d '"')
fi

if [ $url == "null" ];
then 
echo "Not ready yet..."
sleep 5
curl -sk https://editor.imagelabs.net/progress -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0" -H "Content-Type: application/json; charset=utf-8"  -H "X-Requested-With: XMLHttpRequest" -d "{\"task_id\":\"$task\"}" > result$seed.json 
url=$(jq .final_image_url result$seed.json | tr -d '"')
fi

if [ $url != "null" ];
then
rm result$seed.json 
rm test$seed.json 

curl -sk $url -o test$seed.png

else
echo "Crafting Failed"
echo "DEBUG"
cat test$seed.json
fi
