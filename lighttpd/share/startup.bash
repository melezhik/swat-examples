export lighttpd_source_url
export lighttpd_dest_dir
export port
export project
export lighttpd_reinstall

. $project/stop-server.bash

if test -n "${lighttpd_reinstall}"; then
    rm -rf $lighttpd_dest_dir
fi

test -f $lighttpd_dest_dir/sbin/lighttpd && \
$lighttpd_dest_dir/sbin/lighttpd -f $lighttpd_dest_dir/usr/local/etc/lighttpd.conf
