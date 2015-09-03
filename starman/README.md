# SYNOPSIS

\- [Swat](https://github.com/melezhik/swat) tests for [Starman](http://search.cpan.org/perldoc?Starman) web server

\- A few tests were ported from [original starman code](http://cpansearch.perl.org/src/MIYAGAWA/Starman-0.4014/t/)

\- This is only example test suite

# INSTALL

    perl Makefile.PL
    make
    make test
    make install

OR

    sudo cpan swat::starman

# USAGE

    # do not enter host here
    # starman runner is embedded

    $ swat swat::starman 