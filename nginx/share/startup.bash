source swat.ini

cdir=`pwd`
test -f $nginx_dest_dir/usr/local/nginx/logs/nginx.pid && kill `cat nginx_dest_dir/usr/local/nginx/logs/nginx.pid`
rm -rf $nginx_dest_dir

rm -rf /tmp/nginx-source
mkdir -p /tmp/nginx-source/
cd /tmp/nginx-source 

wget $nginx_source_url

tar -xzf  *.tar.gz
cd nginx-*
./configure $nginx_configure_flags
make
make install DESTDIR=$nginx_dest_dir

cd $cdir

cp nginx.conf $nginx_dest_dir/usr/local/nginx/conf/nginx.conf

$nginx_dest_dir/usr/local/nginx/sbin/nginx -p $nginx_dest_dir/usr/local/nginx/

