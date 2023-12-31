tok=""



idvid=$(curl -H "Authorization: Bearer $tok" -F promptText="$2" -F image=@$1 -F options='{"frameRate":24,"camera":{},"parameters":{"guidanceScale":20,"motion":1,"negativePrompt":"takling, morphing, poor quality, distorted"},"extend":false}' -F userId=5f7b4b85-2a8f-4eb4-9953-4ac1978a3863 https://api.pika.art/generate | jq .data.id | tr -d '"' | tr -d '\n'  )

echo ""
echo $idvid

echo ""
sleep 5

cook=''


rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')
    


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 20
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')
    


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 20
fi
rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')
    


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')
    

if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi

rep=$(curl --compressed --http2-prior-knowledge  -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 50' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: a4f7d00566d7755f69cb53e2b2bbaf32236f107e' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
    -b "$cook" \
    -d "[{\"ids\":[\"$idvid\"]}]" \
    https://pika.art/my-library | grep "1:" | grep -o -P '(?<="resultUrl":").*(?=","videoPoster")')


if [ -z "$rep" ];
then 
echo "Not ready yet..."
sleep 5
fi


curl -sk $rep -o pika$1.mp4

    
curl -i -s -k -X $'POST' \
    -H $'Host: pika.art' -H $'Content-Length: 40' -H $'Sec-Ch-Ua: \"Not_A Brand\";v=\"99\", \"Google Chrome\";v=\"109\", \"Chromium\";v=\"109\"' -H $'Next-Router-State-Tree: %5B%22%22%2C%7B%22children%22%3A%5B%22(dashboard)%22%2C%7B%22children%22%3A%5B%22my-library%22%2C%7B%22children%22%3A%5B%22__PAGE__%22%2C%7B%7D%5D%7D%5D%7D%5D%7D%2Cnull%2Cnull%2Ctrue%5D' -H $'Sec-Ch-Ua-Mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36' -H $'Content-Type: text/plain;charset=UTF-8' -H $'Accept: text/x-component' -H $'Next-Action: 2fb29ede907a4faf99889c678b8a6c7b54a774f1' -H $'Sec-Ch-Ua-Platform: \"Windows\"' -H $'Origin: https://pika.art' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://pika.art/my-library' -H $'Accept-Encoding: gzip, deflate, br' -H $'Accept-Language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
   -b "$cook" \
    -d "[\"$idvid\"]" \
   $'https://pika.art/my-library'
