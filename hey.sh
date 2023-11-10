#auth
auth="Authorization: Bearer $(python log.py) "

echo "get upload url"

test=$(curl -sk -H "$auth" "https://leiapixconverter-backend.leiapix.com/api/v2/generateTemporaryUploadPresignedUrl?mimeType=image%2Fjpeg")

url=$(echo $test | jq '.uploadUrl' | tr -d '"')
fileid=$(echo $test | jq '.fileId' | tr -d '"')
#echo  $url
#echo  $fileid
echo "upload file"
curl -ski --upload-file /tmp/test.jpeg "$url" > /dev/null



echo "create map"
mapurl=$(curl -sk -X POST -H "$auth" -H "Content-Type: application/json" -d "{\"originalImageFileId\":\"$fileid\"}" "https://leiapixconverter-backend.leiapix.com/api/v2/generateDepthMap" |  jq '.downloadUrl' | tr -d '"')
#echo  $mapurl

echo "download map"

curl -sk $mapurl -o testmap.jpg


echo "get upload url map"

test2=$(curl -sk -H "$auth" "https://leiapixconverter-backend.leiapix.com/api/v2/generateTemporaryUploadPresignedUrl?mimeType=image%2Fjpeg")

urlmap=$(echo $test2 | jq '.uploadUrl' | tr -d '"')
fileidmap=$(echo $test2 | jq '.fileId' | tr -d '"')
#echo  $urlmap
#echo  $fileidmap

echo "upload map"
curl -ski --upload-file /tmp/testmap.jpg "$urlmap" > /dev/null

echo "create vid"
vidurl=$(curl -sk -X POST -H "$auth" -H "Content-Type: application/json" -d "{\"originalImageFileId\":\"$fileid\",\"depthMapImageFileId\":\"$fileidmap\",\"animationParams\":{\"convergence\":0,\"animationLength\":3,\"phaseX\":0,\"phaseY\":0.25,\"phaseZ\":0.25,\"amplitudeX\":0.7875,\"amplitudeY\":0.15113350125944586,\"amplitudeZ\":1.2505499999999998},\"isPaid\":false}" "https://leiapixconverter-backend.leiapix.com/api/v2/generateMp4" |  jq '.downloadUrl' | tr -d '"')

#echo  $vidurl
echo "download vid"

curl  -sk $vidurl -o testvid.mp4
echo "done"
