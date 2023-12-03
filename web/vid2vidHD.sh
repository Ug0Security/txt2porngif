cook=$(curl -skI "https://vmake.ai/api/v1/storages/persistent/upload-info?contentType=video%2Fmp4&suffix=mp4" | grep "VMAKE_SHARE" | grep -o -P '(?<=VMAKE_SHARE=).*(?=; Path)' | head -n 1)
echo $cook
seed=$(shuf -i 1000000000-9999999999 -n 1)

res=$(curl -sk "https://vmake.ai/api/v1/storages/persistent/upload-info?contentType=video%2Fmp4&suffix=mp4" -H "Cookie: VMAKE_SHARE=$cook")

upurl=$(echo $res | jq -r  '.data.uploadUrl' )
echo $upurl

dlurl=$(echo $res | jq -r '.data.downloadUrl' )
echo $dlurl

curl -ski --upload-file $1 "$upurl" -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0" -H "Cookie: VMAKE_SHARE=$cook"

#curl -X POST "https://business.vmake.ai/api/v1/algorithm/safe" -d "{\"url\":\"$dlurl\"}" -H "Content-Type: application/json" 

res2=$(curl -sk -X POST "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview" -d "{\"videoUrl\":\"$dlurl\"}" -H "Content-Type: application/json" -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0" -H "Cookie: VMAKE_SHARE=$cook")

echo $res2

taskid=$(echo $res2 | jq -r '.data.taskId' )

echo $taskid


echo ""
req3=$(curl "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview/batch?taskIds=$taskid" -H "Cookie: VMAKE_SHARE=$cook") 
urlfin=$(echo $req3 | jq -r '.data[0].previewVideoUrl')
echo $urlfin
if [ $urlfin == "null" ];
then 
echo "Not ready yet..."
sleep 10
fi

echo ""
req3=$(curl "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview/batch?taskIds=$taskid" -H "Cookie: VMAKE_SHARE=$cook") 
urlfin=$(echo $req3 | jq -r '.data[0].previewVideoUrl')
echo $urlfin
if [ $urlfin == "null" ];
then 
echo "Not ready yet..."
sleep 5
fi

echo ""
req3=$(curl "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview/batch?taskIds=$taskid" -H "Cookie: VMAKE_SHARE=$cook") 
urlfin=$(echo $req3 | jq -r '.data[0].previewVideoUrl')
echo $urlfin
if [ $urlfin == "null" ];
then 
echo "Not ready yet..."
sleep 10
fi

echo ""
req3=$(curl "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview/batch?taskIds=$taskid" -H "Cookie: VMAKE_SHARE=$cook") 
urlfin=$(echo $req3 | jq -r '.data[0].previewVideoUrl')
echo $urlfin
if [ $urlfin == "null" ];
then 
echo "Not ready yet..."
sleep 5
fi

echo ""
req3=$(curl "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview/batch?taskIds=$taskid" -H "Cookie: VMAKE_SHARE=$cook") 
urlfin=$(echo $req3 | jq -r '.data[0].previewVideoUrl')
echo $urlfin
if [ $urlfin == "null" ];
then 
echo "Not ready yet..."
sleep 10
fi

echo ""
req3=$(curl "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview/batch?taskIds=$taskid" -H "Cookie: VMAKE_SHARE=$cook") 
urlfin=$(echo $req3 | jq -r '.data[0].previewVideoUrl')
echo $urlfin
if [ $urlfin == "null" ];
then 
echo "Not ready yet..."
sleep 5
fi

echo ""
req3=$(curl "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview/batch?taskIds=$taskid" -H "Cookie: VMAKE_SHARE=$cook") 
urlfin=$(echo $req3 | jq -r '.data[0].previewVideoUrl')
echo $urlfin
if [ $urlfin == "null" ];
then 
echo "Not ready yet..."
sleep 10
fi

echo ""
req3=$(curl "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview/batch?taskIds=$taskid" -H "Cookie: VMAKE_SHARE=$cook") 
urlfin=$(echo $req3 | jq -r '.data[0].previewVideoUrl')
echo $urlfin
if [ $urlfin == "null" ];
then 
echo "Not ready yet..."
sleep 5
fi

echo ""
req3=$(curl "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview/batch?taskIds=$taskid" -H "Cookie: VMAKE_SHARE=$cook") 
urlfin=$(echo $req3 | jq -r '.data[0].previewVideoUrl')
echo $urlfin
if [ $urlfin == "null" ];
then 
echo "Not ready yet..."
sleep 10
fi

echo ""
req3=$(curl "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview/batch?taskIds=$taskid" -H "Cookie: VMAKE_SHARE=$cook") 
urlfin=$(echo $req3 | jq -r '.data[0].previewVideoUrl')
echo $urlfin
if [ $urlfin == "null" ];
then 
echo "Not ready yet..."
sleep 5
fi

echo ""
req3=$(curl "https://vmake.ai/api/v1/web/video/quality-enhance/super-resolution/preview/batch?taskIds=$taskid" -H "Cookie: VMAKE_SHARE=$cook") 
urlfin=$(echo $req3 | jq -r '.data[0].previewVideoUrl')
echo $urlfin
if [ $urlfin == "null" ];
then 
echo "FOOK"
fi



curl -sk $urlfin -o testvidHD$seed.mp4
