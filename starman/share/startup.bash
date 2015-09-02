export no_proxy=127.0.0.1

if  test -f /tmp/app.pid  && ps --pid `cat /tmp/app.pid` 1>/dev/null 2>&1; then
    :
else
    plackup -e 'sub { my $env = shift;  [ 200 , [], [] ] }'  --server Starman -D --pid /tmp/app.pid
fi


