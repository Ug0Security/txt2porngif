#auth
auth="Authorization: Bearer $(python log.py)"

echo "get upload url"

test=$(curl -sk -H "$auth" "https://leiapixconverter-backend.leiapix.com/api/v2.1/generateTemporaryUploadPresignedUrl")

sleep 1

url=$(echo $test | jq '.uploadUrl' | tr -d '"')
fileid=$(echo $test | jq '.fileId' | tr -d '"')
echo  $url
echo  $fileid
echo "upload file"
curl -ski --upload-file $1 "$url" > /dev/null

sleep 1

echo "create map"
mapurl=$(curl -sk -X POST -H "$auth" -H "Content-Type: application/json" -d "{\"originalImageUploadUrl\":\"$url\"}" "https://leiapixconverter-backend.leiapix.com/api/v2.1/generateDepthMap" |  jq '.downloadUrl' | tr -d '"')
echo  $mapurl

sleep 1
echo "download map"

curl -sk $mapurl -o testmap$2.jpg
sleep 1

echo "get upload url map"

test2=$(curl -sk -H "$auth" "https://leiapixconverter-backend.leiapix.com/api/v2.1/generateTemporaryUploadPresignedUrl")

urlmap=$(echo $test2 | jq '.uploadUrl' | tr -d '"')
fileidmap=$(echo $test2 | jq '.fileId' | tr -d '"')
echo  $urlmap
echo  $fileidmap
sleep 1
echo "upload map"
curl -ski --upload-file testmap$2.jpg "$urlmap"


sleep 1
echo "get upload2 url"

test3=$(curl -sk -H "$auth" "https://leiapixconverter-backend.leiapix.com/api/v2.1/generateTemporaryUploadPresignedUrl")
sleep 1
url2=$(echo $test3 | jq '.uploadUrl' | tr -d '"')
fileid2=$(echo $test3 | jq '.fileId' | tr -d '"')
echo  $url2
echo  $fileid2
echo "upload file"
curl -ski --upload-file $1 "$url2" 

sleep 1
echo "create vid"
vidurl=$(curl -sk -X POST -H "$auth" -H "Content-Type: application/json" -d "{\"originalImageUploadUrl\":\"$url2\",\"depthMapUploadUrl\":\"$urlmap\",\"animationParams\":{\"convergence\":0,\"animationLength\":5,\"phaseX\":0,\"phaseY\":0.25,\"phaseZ\":0.25,\"amplitudeX\":0.7875,\"amplitudeY\":0.15113350125944586,\"amplitudeZ\":1.2505499999999998, \"gain\":0.1,\"crop\":0.126},\"isPaid\":false}" "https://leiapixconverter-backend.leiapix.com/api/v2.1/generateMp4" |  jq '.downloadUrl' | tr -d '"')

echo  $vidurl
echo "download vid"

curl  -sk $vidurl -o testvid$2.mp4



echo "done"
