# SYNOPSIS

[Swat](https://github.com/melezhik/swat) tests for [pinto daemon](http://search.cpan.org/perldoc?pintod). 

This simple test suit could be used in various CI processes, f.e. when running tests in Travis.

# INSTALL

    perl Makefile.PL
    make
    make test
    make install

# USAGE

    $ swat swat::pintod 127.0.0.1:3111

# swat settings

**PINTO\_PROTOCOL\_VERSION**, default value is `1`

# COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

# AUTHOR

Alexey Melezhik
