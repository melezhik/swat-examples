
modify_resource(sub {
    my $r = shift;
    s{name}[hello-swat] for $r;
    $r;
});
1;


