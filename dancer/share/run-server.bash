test -f /tmp/app.pid && kill `cat /tmp/app.pid` 
echo plackup -server Starman --port 5000 -D --pid /tmp/app.pid $safe_project/app.pl

plackup -server Starman --port 5000 -D --pid /tmp/app.pid $safe_project/app.pl

