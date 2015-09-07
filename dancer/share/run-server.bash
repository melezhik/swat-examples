test -f /tmp/app.pid && kill `cat /tmp/app.pid` 
plackup -server Starman --port 5000 -D --pid /tmp/app.pid $project/app.pl
ps uax | grep -i starman | grep -v grep

