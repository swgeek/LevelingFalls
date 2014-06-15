<<<<<<< HEAD
token=`curl --data "client_id=<YourClientIdHere>&client_secret=<yourClientSecretHere>&grant_type=client_credentials" https://developer.api.autodesk.com/authentication/v1/authenticate --header "Content-Type: application/x-www-form-urlencoded" -k | cut -d : -f 4 | sed s/\"//g  | sed s/\}// | sed s///`
=======
token=`curl --data "client_id=HXjjvW9Xk9nZq4bvfmVw2DfHeXbLlxBU&client_secret=dRfBEkGwgiE0r7Yc&grant_type=client_credentials" https://developer.api.autodesk.com/authentication/v1/authenticate --header "Content-Type: application/x-www-form-urlencoded" -k | cut -d : -f 4 | sed s/\"//g  | sed s/\}// | sed s///`
>>>>>>> FETCH_HEAD
echo $token > currentToken
sed s/ACCESSTOKENPLACEHOLDER/$token/  levelingfallsWithPlaceholder.html > levelingfalls.html

