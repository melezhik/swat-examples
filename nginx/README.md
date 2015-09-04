# SYNOPSIS

Install [nginx](http://nginx.org/) server from source and run sanity check using [swat](https://github.com/melezhik/swat) DSL.

# Check List

- landing page
- fast cgi

# INSTALL

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

# USAGE

    # do not enter host here
    # nginx runner is embedded

    $ swat swat::nginx 

# Configuration

You may redefine test configiration using swat.my file:

- **nginx\_source\_url** - http url to download source code from ( should be tar.gz archive ); default value `http://nginx.org/download/nginx-1.8.0.tar.gz`
- **nginx\_dest\_dir** - destination dirictory for make install, default value is `/tmp/nginx`
- **nginx\_configure\_flags** - a string, default value is `--without-http_rewrite_module`
- **port** - nginx server port, default value is `8000`
- **nginx\_reinstall** - forcefully resinstall installed nginx, by default this is unset

Setup example:

    $ echo nginx_source_url=http://nginx.org/download/nginx-1.7.0.tar.gz > swat.my
    $ echo port=7000 >> swat.my
    $ swat swat::nginx

# HOME PAGE

https://github.com/melezhik/swat-packages/tree/master/nginx

# COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

# AUTHOR

Alexey Melezhik
