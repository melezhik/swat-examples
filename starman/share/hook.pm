my $cmd = "plackup -server Starman -D --pid /tmp/app.pid --path $path --access-log /tmp/access.log  $route_dir/app.psgi";
ok(1,"run $cmd");

`$cmd`;

1;

