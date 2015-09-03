my $cmd = "plackup --server FCGI --port 9000  --pid /tmp/app.pid -D  --host 127.0.0.1 app.psgi";
ok(1,"run $cmd");

`$cmd`;

1;

