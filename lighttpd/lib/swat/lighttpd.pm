package swat::lighttpd;
our $VERSION = '0.1.0';
1;

__END__


=head1 SYNOPSIS

Install L<lighttpd|http://lighttpd.org/> server from source and run sanity check using L<swat|https://github.com/melezhik/swat> DSL.

=head1 Check List

=over 

=item *

landing page

=item *

proxy to standalone fast cgi server ( perl/FCGI/plack ) 

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

    sudo cpan swat::lighttpd

)

=head1 USAGE

    # do not enter host here
    # lighttpd runner is embedded

    $ swat swat::lighttpd 

=head1 Configuration

You may redefine test configiration using swat.my file:

=over 

=item *

B<lighttpd_source_url> - http url to download source code from ( should be tar.gz archive ); default value C<http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.37.tar.gz>

=item *

B<lighttpd_dest_dir> - destination dirictory for make install, default value is C</tmp/lighttpd>


=item *

B<port> - lighttpd server port, default value is C<8000>



=back


Setup example:

    $ echo lighttpd_source_url=http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.36.tar.gz > swat.my
    $ echo port=7000 >> swat.my
    $ swat swat::lighttpd

=head1 HOME PAGE

https://github.com/melezhik/swat-packages/tree/master/lighttpd


=head1 COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


=head1 AUTHOR

Alexey Melezhik


