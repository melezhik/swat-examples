cdir=`pwd`


if test -n "${nginx_reinstall}"; then
    test -f $nginx_dest_dir/usr/local/nginx/logs/nginx.pid && kill `cat $nginx_dest_dir/usr/local/nginx/logs/nginx.pid`
    rm -rf $nginx_dest_dir/usr/local/nginx/sbin/nginx
fi


if test -s $nginx_dest_dir/usr/local/nginx/sbin/nginx  ; then

    :

else

    rm -rf $nginx_dest_dir
    
    rm -rf /tmp/nginx-source
    mkdir -p /tmp/nginx-source/
    cd /tmp/nginx-source 
    
    curl  $nginx_source_url -o data.tar.gz || exit 1
    
    tar -xzf  *.tar.gz
    cd nginx-*
    ./configure $nginx_configure_flags
    make
    make install DESTDIR=$nginx_dest_dir

    cd $cdir
    
    cp $safe_project/nginx.conf $nginx_dest_dir/usr/local/nginx/conf/nginx.conf
    perl -i -p -e "s{%port%}[$port]" $nginx_dest_dir/usr/local/nginx/conf/nginx.conf

    
fi 



