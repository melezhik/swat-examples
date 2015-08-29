tmp_dir=/tmp/django
rm -rf  $tmp_dir
mkdir -p $tmp_dir

curl -L $host/admin -o $tmp_dir/login.txt -f -s  -D $tmp_dir/header.txt
token=`perl -n -e 'print $1 if /name=\Wcsrfmiddlewaretoken\W value=\W(.*?)\W/' $tmp_dir/login.txt`
csrftoken=`perl -n -e 'print $1 if /Set-Cookie:  csrftoken=(.*?);/' $tmp_dir/header.txt`

curl  "$host/admin/login/?next=/admin/" -f -s -X POST -D $tmp_dir/header.txt -o $tmp_dir/login_ok.txt -d "username=$username" \
-d "password=$password" -d "next=/admin/" -d "csrfmiddlewaretoken=$token" -b "csrftoken=$csrftoken" --post301 --post302 --post303
export sessionid=`perl -n -e 'print $1 if /Set-Cookie:  sessionid=(.*?);/' $tmp_dir/header.txt`

curl_params="-b 'sessionid=$sessionid'"


