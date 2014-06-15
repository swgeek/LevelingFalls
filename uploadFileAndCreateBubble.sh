token=`cat currentToken`
echo $token
curl --header "Authorization: Bearer $token"  \
-H "Content-Type:application/octet-stream" --header "Expect:" \
--upload-file $1 -X PUT https://developer.api.autodesk.com/oss/v1/buckets/mybucket2/objects/$1 -k > uploadFileResponse.txt

objectId=`grep id uploadFileResponse.txt | cut -f 4 -d \" -`
objectIdBase64=`echo -n $objectId | base64` 
echo $objectIdBase64 > objectURN.txt

curl -k -H "Content-Type: application/json" -H "Authorization:Bearer $token" \
-i -d "{\"urn\":\"$objectIdBase64\"}" \
https://developer.api.autodesk.com/viewingservice/v1/bubbles > createBubbleResponse.txt

