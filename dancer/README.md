# Usage

## Install dancer

    $ cpan Dancer

## Install swat

    $ cpan swat

## Run application

    $ git clone https://github.com/melezhik/swat-packages.git
    $ cd ~/.swat-packages
    $ perl ./dancer/app.pl
    
## Run tests


    $ swat ./dancer 127.0.0.1:3000    

    /home/vagrant/.swat/reports/127.0.0.1:3000/hello/:name/00.t ..
    # start swat for 127.0.0.1:3000//hello/:name | is swat package 0
    # swat version v0.1.23 | debug 0 | try num 2 | ignore http errors 0
    ok 1 - successful response from GET 127.0.0.1:3000/hello/:name
    # data file: /home/vagrant/.swat/reports/127.0.0.1:3000//hello/:name/content.GET.txt
    ok 2 - GET /hello/:name returns 200 OK
    ok 3 - GET /hello/:name returns xzzav
    1..3
    ok
    All tests successful.
    Files=1, Tests=3,  0 wallclock secs ( 0.01 usr +  0.01 sys =  0.02 CPU)
    Result: PASS

