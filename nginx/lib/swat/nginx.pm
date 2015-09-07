package swat::nginx;
our $VERSION = '0.1.1';
1;

__END__


=head1 SYNOPSIS

Install L<nginx|http://nginx.org/> server from source and run sanity check using L<swat|https://github.com/melezhik/swat> DSL.

=head1 Check List

=over 

=item *

landing page

=item *

fast cgi

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

    sudo cpan swat::nginx

)

=head1 USAGE

    # do not enter host here
    # nginx runner is embedded

    $ swat swat::nginx 

=head1 Configuration

You may redefine test configiration using swat.my file:

=over 

=item *

B<nginx_source_url> - http url to download source code from ( should be tar.gz archive ); default value C<http://nginx.org/download/nginx-1.8.0.tar.gz>

=item *

B<nginx_dest_dir> - destination dirictory for make install, default value is C</tmp/nginx>

=item *

B<nginx_configure_flags> - a string, default value is C<--without-http_rewrite_module>


=item *

B<port> - nginx server port, default value is C<8000>



=back


Setup example:

    $ echo nginx_source_url=http://nginx.org/download/nginx-1.7.0.tar.gz > swat.my
    $ echo port=7000 >> swat.my
    $ swat swat::nginx

=head1 HOME PAGE

https://github.com/melezhik/swat-packages/tree/master/nginx


=head1 COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


=head1 AUTHOR

Alexey Melezhik


