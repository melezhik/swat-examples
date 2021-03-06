# SYNOPSIS

Install [lighttpd](http://lighttpd.org/) server from source and run sanity check using [swat](https://github.com/melezhik/swat) DSL.

# Check List

- landing page
- proxy to standalone fast cgi server ( perl/FCGI/plack ) 

# INSTALL

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

# USAGE

    # do not enter host here
    # lighttpd runner is embedded

    $ swat swat::lighttpd 

# Configuration

You may redefine test configiration using swat.my file:

- **lighttpd\_source\_url** - http url to download source code from ( should be tar.gz archive ); default value `http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.37.tar.gz`
- **lighttpd\_dest\_dir** - destination dirictory for make install, default value is `/tmp/lighttpd`
- **port** - lighttpd server port, default value is `8000`

    **lighttpd\_reinstall** - reinstall existed lighttpd server, default value is unset

Setup example:

    $ echo lighttpd_source_url=http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.36.tar.gz > swat.my
    $ echo port=7000 >> swat.my
    $ swat swat::lighttpd

# HOME PAGE

https://github.com/melezhik/swat-packages/tree/master/lighttpd

# COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

# AUTHOR

Alexey Melezhik
