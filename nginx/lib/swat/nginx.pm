package swat::nginx;
our $VERSION = '0.1.2';
1;

__END__


=head1 SYNOPSIS

- L<Swat|https://github.com/melezhik/swat> tests for L<nginx|http://nginx.org/> server

=head1 INSTALL

    perl Makefile.PL
    make
    make test
    make install

OR

    sudo cpan swat::nginx

=head1 USAGE

    # do not enter host here
    # nginx runner is embedded

    $ swat swat::nginx 


=head1 HOME PAGE

https://github.com/melezhik/swat-packages/tree/master/nginx


=head1 COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


=head1 AUTHOR

Alexey Melezhik

