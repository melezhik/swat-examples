sub install_lighttpd {
    $pid = open(INSTALOG, "bash $project/install.bash |")  or die "Couldn't fork: $!\n";
    $| = 1;
    while (<INSTALOG>) {
       diag($_);
    }
    close(INSTALOG);
}


if (! -e "$ENV{lighttpd_dest_dir}/sbin/lighttpd"){
    install_lighttpd()
}

BAIL_OUT("failed to install/run lighttpd") unless -e '/tmp/lighttpd-source/run.ok';

1;

