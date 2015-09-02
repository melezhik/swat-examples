export no_proxy=127.0.0.1

test -f /tmp/app.pid && kill `cat /tmp/app.pid`
plackup  --server Starman -D --pid /tmp/app.pid --path /findbin $route_dir/app.psgi 


