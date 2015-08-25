package swat::pintod;
our $VERSION = '0.1.0';
1;

__END__


=head1 SYNOPSIS

L<Swat|https://github.com/melezhik/swat> tests for L<pinto daemon|http://search.cpan.org/perldoc?pintod>. 

This simple test suit could be used in various CI processes, f.e. when running tests in Travis.

=head1 INSTALL

    perl Makefile.PL
    make
    make test
    make install

=head1 USAGE

    $ swat swat::pintod 127.0.0.1:3111


=head1 AUTHOR

Alexey Melezhik


