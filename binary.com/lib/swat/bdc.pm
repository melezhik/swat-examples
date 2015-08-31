package swat::bdc;
our $VERSION = '0.1.3';
1;

__END__


=head1 SYNOPSIS

L<Swat|https://github.com/melezhik/swat> tests for https://www.binary.com. 

This is simple test suit could be used in various CI processes, f.e. when running tests in Travis.

A limited set of routes is tested. GET / and POST /d/trade_price.cgi. 

=head1 INSTALL

    perl Makefile.PL
    make
    make test
    make install

# OR


    sudo cpan swat::bdc

=head1 USAGE

    $ swat swat::bdc https://www.binary.com 


=head1 Sample Output

    $ swat swat::bdc https://www.binary.com -v

    /home/vagrant/.swat/reports/https://www.binary.com/00.t .........................
    # start swat for https://www.binary.com// | project /usr/local/share/perl/5.20.2/auto/share/module/swat-bdc | is swat package 1
    # swat version 0.1.37 | debug 0 | try num 1 | ignore http errors 0
    ok 1 - successful response from GET https://www.binary.com/
    # data file: /home/vagrant/.swat/reports/https://www.binary.com///content.GET.txt
    ok 2 - GET / returns 200 OK
    ok 3 - GET / returns <title>Binary.com
    1..3
    ok
    /home/vagrant/.swat/reports/https://www.binary.com/d/trade_price.cgi/00.post.t ..
    # start swat for https://www.binary.com//d/trade_price.cgi | project /usr/local/share/perl/5.20.2/auto/share/module/swat-bdc | is swat package 1
    # swat version 0.1.37 | debug 0 | try num 1 | ignore http errors 0
    ok 1 - successful response from POST https://www.binary.com/d/trade_price.cgi
    # data file: /home/vagrant/.swat/reports/https://www.binary.com//d/trade_price.cgi/content.POST.txt
    ok 2 - POST /d/trade_price.cgi returns 200 OK
    ok 3 - POST /d/trade_price.cgi returns <div id="amount_for_10" class="bet_cost div_wrapper default">
    ok 4 - POST /d/trade_price.cgi returns data matching <span id="units_for_10" class="stylized_units">(\d+)<\/span>
    # line found: 51
    ok 5 - POST /d/trade_price.cgi returns data matching <span id="cents_for_10" class="stylized_cents">\.(\d+)<\/span>
    # line found: 65
    ok 6 - POST /d/trade_price.cgi returns data matching <input type="hidden" name="price" value="(\d+\.\d+)"\/>
    # line found: 51.65
    # line found: 51.17
    1..6
    ok
    All tests successful.
    Files=2, Tests=9, 13 wallclock secs ( 0.01 usr  0.01 sys +  0.02 cusr  0.01 csys =  0.05 CPU)
    Result: PASS
    

=head1 HOME PAGE

https://github.com/melezhik/swat-packages/tree/master/binary.com


=head1 COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


=head1 AUTHOR

Alexey Melezhik

