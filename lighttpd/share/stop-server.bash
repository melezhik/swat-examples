test -f $lighttpd_dest_dir/usr/local/var/run/lighttpd.pid && kill `cat $lighttpd_dest_dir/usr/local/var/run/lighttpd.pid`
rm -f /tmp/lighttpd-source/run.ok

