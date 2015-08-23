# SYNOPSIS

Swat tests for mongodb http interface. 
This is simple test suit could be used in various CI processes, f.e. when running tests in Travis.

# INSTALL

    perl Makefile.PL
    make
    make test
    make install

# USAGE

Install mongodb

    $ sudo apt-get install mongodb

Run mongodb with --rest

    $ sudo /etc/init.d/mongodb start

Run swat tests

    $ swat swat::mongodb 127.0.0.1:28017

# AUTHOR

Alexey Melezhik
