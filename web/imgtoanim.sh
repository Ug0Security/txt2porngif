curl -s -X POST -H "Host: restapi.cutout.pro" \
-H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0" \
-H "Accept: application/json, text/plain, */*" \
-H "Accept-Language: en-GB,en;q=0.5" \
-H "Accept-Encoding: gzip, deflate" \
-H "Content-Type: multipart/form-data; boundary=---------------------------282801311839528335972784736871" \
-H "Origin: https://www.cutout.pro" \
-H "Dnt: 1" \
-H "Referer: https://www.cutout.pro/" \
-H "Sec-Fetch-Dest: empty" \
-H "Sec-Fetch-Mode: cors" \
-H "Sec-Fetch-Site: same-site" \
-H "Te: trailers" \
-H "Connection: close" \
-F "file=@$1;type=image/png" \
"https://restapi.cutout.pro/oss/upload" > animout$1.json

urlbase=$(cat animout$1.json | jq -r '.data')
urlbaseenc=$(echo $urlbase | jq "@uri" -jRr)

sleep 1

curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0" "https://restapi.cutout.pro/webFaceDriven/submitTaskByUrl?imageUrl=$urlbaseenc&templateId=1&outputFormat=gif&isHd=true" > animresp$1.json

taskid=$(cat animresp$1.json | jq -r '.data')

sleep 2

curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0" "https://restapi.cutout.pro//webFaceDriven/getTaskInfo?taskId=$taskid" > animfinal$1.json

err=$(cat animfinal$1.json | jq -r '.data.failCode')
urlfin=$(cat animfinal$1.json | jq -r '.data.previewUrl')

if [ $urlfin == "null" ];
then 
if [ $err == "7001" ];
then
echo "no face detected exiting"
exit
fi
echo "Not ready yet...(1)"
sleep 5
curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0" "https://restapi.cutout.pro//webFaceDriven/getTaskInfo?taskId=$taskid" > animfinal$1.json
urlfin=$(cat animfinal$1.json | jq -r '.data.previewUrl')
else
curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0" $urlfin > anim$1.mp4
cp anim$1.mp4 vids/anim$1.mp4
fi

if [ $urlfin == "null" ];
then 
echo "Not ready yet...(2)"
sleep 5
curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0" "https://restapi.cutout.pro//webFaceDriven/getTaskInfo?taskId=$taskid" > animfinal$1.json
urlfin=$(cat animfinal$1.json | jq -r '.data.previewUrl')
else
curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0" $urlfin > anim$1.mp4
cp anim$1.mp4 vids/anim$1.mp4
fi

if [ $urlfin == "null" ];
then 
echo "Not ready yet...(3)"
sleep 5
curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0" "https://restapi.cutout.pro//webFaceDriven/getTaskInfo?taskId=$taskid" > animfinal$1.json
urlfin=$(cat animfinal$1.json | jq -r '.data.previewUrl')
else
curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0" $urlfin > anim$1.mp4
cp anim$1.mp4 vids/anim$1.mp4
fi

if [ $urlfin == "null" ];
then 
echo "Not ready yet...exiting"
exit
else
curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0" $urlfin > anim$1.mp4
cp anim$1.mp4 vids/anim$1.mp4
fi


