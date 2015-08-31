package swat::zendesk;
our $VERSION = '0.1.0';
1;

__END__


=head1 SYNOPSIS

L<Swat|https://github.com/melezhik/swat> tests for zendesk application

This is simple test suit could be used in monitoring/deployment. A limited set of routes is tested.

=head1 INSTALL

    perl Makefile.PL
    make
    make test
    make install

# OR

    sudo cpan swat::zendesk

=head1 USAGE

Setup credentials. This test suite implies you use basic authentication.


    $ echo email_address=user@domain.com > swat.my
    $ echo password=secret123 >> swat.my


=head1 Sample Output

    
