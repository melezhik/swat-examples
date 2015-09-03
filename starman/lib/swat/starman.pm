package swat::starman;
our $VERSION = '0.1.2';
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
    # starman runner is embedded

    $ swat swat::starman 


=head1 HOME PAGE

https://github.com/melezhik/swat-packages/tree/master/starman


=head1 COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


=head1 AUTHOR

Alexey Melezhik

