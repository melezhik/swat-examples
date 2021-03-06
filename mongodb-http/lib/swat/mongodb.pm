package swat::mongodb;
our $VERSION = '0.1.2';
1;

__END__


=head1 SYNOPSIS

Swat tests for mongodb http interface. 
This is simple test suit could be used in various CI processes, f.e. when running tests in Travis.

=head1 INSTALL

    perl Makefile.PL
    make
    make test
    make install

=head1 USAGE

Install mongodb

    $ sudo apt-get install mongodb

Run mongodb with --rest

    $ sudo /etc/init.d/mongodb start

Run swat tests

    $ swat swat::mongodb 127.0.0.1:28017


=head1 COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


=head1 AUTHOR

Alexey Melezhik


