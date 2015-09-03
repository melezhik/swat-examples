package swat::starman;
our $VERSION = '0.1.0';
1;

__END__


=head1 SYNOPSIS

- L<Swat|https://github.com/melezhik/swat> tests for L<Starman|http://search.cpan.org/perldoc?Starman> web server

- A few tests were ported from L<original starman code|http://cpansearch.perl.org/src/MIYAGAWA/Starman-0.4014/t/>

- This is only example test suite


=head1 INSTALL

    perl Makefile.PL
    make
    make test
    make install

OR

    sudo cpan swat::starman

=head1 USAGE

    # do not enter host here
    # starman runner is embeded

    $ swat swat::starman 


