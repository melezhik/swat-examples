open F, "/tmp/app.pid" or die $!;
my $pid = <F>;
`kill $pid`;
close F;

1;

