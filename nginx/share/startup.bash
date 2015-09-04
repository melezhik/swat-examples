
export nginx_source_url
export nginx_dest_dir
export nginx_configure_flags
export port
export safe_project
export nginx_reinstall

if  bash  $safe_project/install-nginx.bash 1>/tmp/install-nginx.log 2>&1; then
:
else
 cat /tmp/install-nginx.log
 exit 1
fi


test -f $nginx_dest_dir/usr/local/nginx/logs/nginx.pid && kill `cat $nginx_dest_dir/usr/local/nginx/logs/nginx.pid`
$nginx_dest_dir/usr/local/nginx/sbin/nginx -p $nginx_dest_dir/usr/local/nginx/
