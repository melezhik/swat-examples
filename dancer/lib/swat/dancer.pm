package swat::dancer;
our $VERSION = '0.1.1';
1;

__END__


=head1 SYNOPSIS

Installs L<dancer2|http://search.cpan.org/perldoc?Dancer2> sample Dancer2 application  run sanity check using L<swat|https://github.com/melezhik/swat> DSL.

=head1 Check List

=over 

=item *

get, post

=item *

cookies

=item *

static file

=item *

config parameter

=back

=head1 INSTALL

    # yes you need a curl
    sudo apt-get install curl

AND (


    perl Makefile.PL
    make
    make test
    make install

OR

    sudo cpan swat::dancer

)

=head1 USAGE

    # do not enter host here
    # dancer runner is embedded

    $ swat swat::dancer 

=head1 HOME PAGE

https://github.com/melezhik/swat-packages/tree/master/dancer


=head1 COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


=head1 AUTHOR

Alexey Melezhik

