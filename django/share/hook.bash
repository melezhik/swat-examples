rm -rf cook.txt
curl -L $host/admin -o login.txt -f -s -c cook.txt -D header.txt
token=`perl -n -e 'print $1 if /name=\Wcsrfmiddlewaretoken\W value=\W(.*?)\W/' login.txt`
csrftoken=`perl -n -e 'print $1 if /Set-Cookie:  csrftoken=(.*?);/' header.txt`

curl  "$host/admin/login/?next=/admin/" -f -s -X POST -D header.txt -o login_ok.txt -d "username=$username" \
-d "password=$password" -d "next=/admin/" -d "csrfmiddlewaretoken=$token" -b "csrftoken=$csrftoken" --post301 --post302 --post303
export sessionid=`perl -n -e 'print $1 if /Set-Cookie:  sessionid=(.*?);/' header.txt`
#echo $sessionid


curl_params="-b 'sessionid=$sessionid'"
