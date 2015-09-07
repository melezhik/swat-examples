echo lighttpd_dest_dir: $lighttpd_dest_dir
cdir=`pwd`
rm -rf $lighttpd_dest_dir
rm -rf /tmp/lighttpd-source

mkdir -p /tmp/lighttpd-source/

cd /tmp/lighttpd-source

curl -D -  -s $lighttpd_source_url -o data.tar.gz || exit 1

tar -xzf  *.tar.gz
cd lighttpd-*
./autogen.sh || exit 1
./configure  --prefix $lighttpd_dest_dir || exit 1
make
make install

cd $cdir

echo patching lighttpd.conf
echo port: $port

mkdir -p $lighttpd_dest_dir/usr/local/etc/conf.d
mkdir -p $lighttpd_dest_dir/usr/local/etc/lighttpd
mkdir -p $lighttpd_dest_dir/usr/local/var/log
mkdir -p $lighttpd_dest_dir/usr/local/var/run
mkdir -p $lighttpd_dest_dir/usr/local/var/tmp
mkdir -p $lighttpd_dest_dir/usr/local/var/cache/lighttpd
mkdir -p $lighttpd_dest_dir/usr/local/srv/www
mkdir -p $lighttpd_dest_dir/usr/local/etc/

cp $project/lighttpd.conf $lighttpd_dest_dir/usr/local/etc/ || exit 1
cp $project/modules.conf $lighttpd_dest_dir/usr/local/etc/ || exit 1
cp -r $project/conf.d/*.conf $lighttpd_dest_dir/usr/local/etc/conf.d || exit 1

perl -i -p -e "s{%prefix%}[$lighttpd_dest_dir]g" $lighttpd_dest_dir/usr/local/etc/lighttpd.conf || exit 1
perl -i -p -e "s{%port%}[$port]" $lighttpd_dest_dir/usr/local/etc/lighttpd.conf || exit 1

echo "running lighttpd"
echo $lighttpd_dest_dir/sbin/lighttpd -f $lighttpd_dest_dir/usr/local/etc/lighttpd.conf

$lighttpd_dest_dir/sbin/lighttpd -f $lighttpd_dest_dir/usr/local/etc/lighttpd.conf || exit 1


touch /tmp/lighttpd-source/install.ok


#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:var.log_root    = "/var/log/lighttpd"
#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:var.server_root = "/srv/www"
#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:var.state_dir   = "/var/run"
#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:var.home_dir    = "/var/lib/lighttpd"
#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:var.conf_dir    = "/etc/lighttpd"
#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:var.vhosts_dir  = server_root + "/vhosts"
#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:var.cache_dir   = "/var/cache/lighttpd"
#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:var.socket_dir  = home_dir + "/sockets"
#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:server.document-root = server_root + "/htdocs"
#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:server.pid-file = state_dir + "/lighttpd.pid"
#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:server.errorlog             = log_root + "/error.log"
#/home/vagrant/projects/lighttpd-1.4.37/doc/config/lighttpd.conf:server.upload-dirs = ( "/var/tmp" )


#var.log_root    = "/var/log/lighttpd"
#var.server_root = "/srv/www"
#var.state_dir   = "/var/run"
#var.home_dir    = "/var/lib/lighttpd"
#var.conf_dir    = "/etc/lighttpd"

