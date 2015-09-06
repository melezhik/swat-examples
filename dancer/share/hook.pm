sub run_server {
    my $pid = open(LOG, "bash $project/run-server.bash |")  or die "Couldn't fork: $!\n";
    $| = 1;
    while (<LOG>) {
       diag($_);
    }
    close(LOG);
}


if (! -e "/tmp/app.pid"){
    run_server()
}

BAIL_OUT("failed to start server") unless -e '/tmp/app.pid';

1;

