package swat::zendesk;
our $VERSION = '0.1.0';
1;

__END__


=head1 SYNOPSIS

L<Swat|https://github.com/melezhik/swat> tests for zendesk application

This is simple test suit could be used in monitoring/deployment. A limited set of routes is tested.

=head1 INSTALL

    perl Makefile.PL
    make
    make test
    make install

OR

    sudo cpan swat::zendesk

=head1 USAGE

Setup credentials. This test suite implies you use basic authentication.


    echo email_address=user@domain.com > swat.my
    echo password=secret123 >> swat.my

Run tests

    swat swat::zendesk http://example.zendesk.com



=head1 Sample Output


    $ swat swat::zendesk https://swat16.zendesk.com -v
    /home/vagrant/.swat/reports/https://swat16.zendesk.com/api/v2/:search/00.t ...........
    # start swat for https://swat16.zendesk.com//api/v2/:search | project /usr/local/share/perl/5.20.2/auto/share/module/swat-zendesk | is swat package 1
    # swat version 0.1.37 | debug 0 | try num 1 | ignore http errors 0
    ok 1 - successful response from GET https://swat16.zendesk.com/api/v2/:search
    # data file: /home/vagrant/.swat/reports/https://swat16.zendesk.com//api/v2/:search/content.GET.txt
    ok 2 - GET /api/v2/:search returns 200 OK
    ok 3 - GET /api/v2/:search returns Content-Type: application/json;
    ok 4 - GET /api/v2/:search returns {"results":[]
    1..4
    ok
    /home/vagrant/.swat/reports/https://swat16.zendesk.com/api/v2/users.json/00.t ........
    # start swat for https://swat16.zendesk.com//api/v2/users.json | project /usr/local/share/perl/5.20.2/auto/share/module/swat-zendesk | is swat package 1
    # swat version 0.1.37 | debug 0 | try num 1 | ignore http errors 0
    ok 1 - successful response from GET https://swat16.zendesk.com/api/v2/users.json
    # data file: /home/vagrant/.swat/reports/https://swat16.zendesk.com//api/v2/users.json/content.GET.txt
    ok 2 - GET /api/v2/users.json returns 200 OK
    ok 3 - GET /api/v2/users.json returns Content-Type: application/json;
    ok 4 - GET /api/v2/users.json returns {"users":[
    1..4
    ok
    /home/vagrant/.swat/reports/https://swat16.zendesk.com/hc/api/v2/articles.json/00.t ..
    # start swat for https://swat16.zendesk.com//hc/api/v2/articles.json | project /usr/local/share/perl/5.20.2/auto/share/module/swat-zendesk | is swat package 1
    # swat version 0.1.37 | debug 0 | try num 1 | ignore http errors 0
    ok 1 - successful response from GET https://swat16.zendesk.com/hc/api/v2/articles.json
    # data file: /home/vagrant/.swat/reports/https://swat16.zendesk.com//hc/api/v2/articles.json/content.GET.txt
    ok 2 - GET /hc/api/v2/articles.json returns 200 OK
    ok 3 - GET /hc/api/v2/articles.json returns Content-Type: application/json;
    ok 4 - GET /hc/api/v2/articles.json returns {"articles":[
    1..4
    ok
    All tests successful.
    Files=3, Tests=12, 25 wallclock secs ( 0.02 usr  0.00 sys +  0.04 cusr  0.01 csys =  0.07 CPU)
    Result: PASS
    
