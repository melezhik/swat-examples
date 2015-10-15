package swat::dancer;
1;

package main;

sub project_root_dir {
    get_prop('project')
}

sub start_dancer_app {
    my $project_root_dir = project_root_dir();
    `cd $project_root_dir && export project_root_dir=$project_root_dir && carton exec  plackup  -s Starman -D 'app.pl' --pid /tmp/app.pid`;
    my $pid = get_app_pid();
    ok($pid,"dancer is running . pid: $pid");
}

sub stop_dancer_app {
    my $pid = get_app_pid();
    `kill $pid` if $pid;
}

sub get_app_pid {
    my $pid;
    if (open F, "/tmp/app.pid"){
        $pid = <F>;
        close F;
    }
    return $pid;
}

1;

