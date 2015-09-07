export nginx_source_url
export nginx_dest_dir
export nginx_configure_flags
export port
export project
export nginx_reinstall

test -f $nginx_dest_dir/usr/local/nginx/logs/nginx.pid && kill `cat $nginx_dest_dir/usr/local/nginx/logs/nginx.pid`


if test -n "${nginx_reinstall}"; then
    rm -rf $nginx_dest_dir
fi

test -f $nginx_dest_dir/usr/local/nginx/sbin/nginx && $nginx_dest_dir/usr/local/nginx/sbin/nginx -p $nginx_dest_dir/usr/local/nginx/
