cdir=`pwd`
rm -rf $nginx_dest_dir
rm -rf /tmp/nginx-source

mkdir -p /tmp/nginx-source/

cd /tmp/nginx-source 

curl -D - -s $nginx_source_url -o data.tar.gz || exit 1

tar -xzf  *.tar.gz
cd nginx-*
./configure "${nginx_configure_flags}" || exit 1
make || exit 1
make install DESTDIR=$nginx_dest_dir || exit 1

cd $cdir

echo patching nginx.conf
echo port: $port

cp $project/nginx.conf $nginx_dest_dir/usr/local/nginx/conf/nginx.conf || exit 1
perl -i -p -e "s{%port%}[$port]" $nginx_dest_dir/usr/local/nginx/conf/nginx.conf || exit 1

$nginx_dest_dir/usr/local/nginx/sbin/nginx -p $nginx_dest_dir/usr/local/nginx/ || exit 1


touch /tmp/nginx-source/install.ok

