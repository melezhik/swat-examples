# USAGE

    swat pintod 127.0.0.1:3111


    $ swat pintod 127.0.0.1:3111
    /home/vagrant/.swat/reports/127.0.0.1:3111/action/list/00.post.t ........
    # start swat for 127.0.0.1:3111//action/list
    # debug 0 | try num 2 | ignore http errors 0
    ok 1 - successfull response from POST 127.0.0.1:3111/action/list
    # data file: /home/vagrant/.swat/reports/127.0.0.1:3111//action/list/content.POST.txt
    ok 2 - POST /action/list returns 200 OK
    1..2
    ok
    /home/vagrant/.swat/reports/127.0.0.1:3111/action/statistics/00.post.t ..
    # start swat for 127.0.0.1:3111//action/statistics
    # debug 0 | try num 2 | ignore http errors 0
    ok 1 - successfull response from POST 127.0.0.1:3111/action/statistics
    # data file: /home/vagrant/.swat/reports/127.0.0.1:3111//action/statistics/content.POST.txt
    ok 2 - POST /action/statistics returns 200 OK
    ok 3 - POST /action/statistics returns data matching STATISTICS FOR THE "(\w+)" STACK
    # line found: master
    1..3
    ok
    /home/vagrant/.swat/reports/127.0.0.1:3111/action/verify/00.post.t ......
    # start swat for 127.0.0.1:3111//action/verify
    # debug 0 | try num 2 | ignore http errors 0
    ok 1 - successfull response from POST 127.0.0.1:3111/action/verify
    # data file: /home/vagrant/.swat/reports/127.0.0.1:3111//action/verify/content.POST.txt
    ok 2 - POST /action/verify returns 200 OK
    1..2
    ok
    All tests successful.
    Files=3, Tests=7,  1 wallclock secs ( 0.03 usr  0.00 sys +  0.08 cusr  0.01 csys =  0.12 CPU)
    Result: PASS
    
    
