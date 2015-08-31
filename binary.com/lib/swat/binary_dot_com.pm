package swat::binary_dot_com;
our $VERSION = '0.1.0';
1;

__END__


=head1 SYNOPSIS

L<Swat|https://github.com/melezhik/swat> tests for https://www.binary.com. 

This is simple test suit could be used in various CI processes, f.e. when running tests in Travis.

A limited set of routes is tested. GET / and POST /d/trade_price.cgi. 

=head1 INSTALL

    perl Makefile.PL
    make
    make test
    make install

# OR


    sudo cpan swat::binary_dot_com

=head1 USAGE

    $ swat swat::binary_dot_com https://www.binary.com 


=head1 COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


=head1 AUTHOR

Alexey Melezhik


