# SYNOPSIS

Runs sanity [swat](https://github.com/melezhik/swat) checks against a sample Dancer2 application ( app.pl ).

# Check List

- placeholders for parameters
- get, post requests
- cookies
- sending static files
- config parameters

# INSTALL

    sudo apt-get install curl
    carton

# USAGE

    carton exec swat

# Sample output 

```
vagrant@Debian-jessie-amd64-netboot:~/projects/swat-examples/dancer$ carton exec  swat
/home/vagrant/.swat/.cache/24579/prove/config_parameters/00.GET.t ....
ok 1 - dancer is running . pid: 24639
#
ok 2 - GET 127.0.0.1:5000/appname succeeded
# response saved to /home/vagrant/.swat/.cache/24579/prove/OAI3CWaNtt
ok 3 - GET /appname returns 200 OK
ok 4 - GET /appname returns This is foo-app
ok 5 - response is already set
# response saved to /home/vagrant/.swat/.cache/24579/prove/hfQ3shSHf1
ok 6 - GET /config_parameters returns success
1..6
ok
/home/vagrant/.swat/.cache/24579/prove/dancer_send_file/00.GET.t .....
ok 1 - dancer is running . pid: 24651
#
ok 2 - GET 127.0.0.1:5000/static/file2.txt succeeded
# response saved to /home/vagrant/.swat/.cache/24579/prove/E9oUOAUeXY
ok 3 - GET /static/file2.txt returns 200 OK
ok 4 - GET /static/file2.txt returns Content-Type: text/plain
ok 5 - GET /static/file2.txt returns HELLO2
ok 6 - GET /static/file2.txt returns WORLD2
ok 7 - response is already set
# response saved to /home/vagrant/.swat/.cache/24579/prove/OsleFhBINh
ok 8 - GET /dancer_send_file returns success
1..8
ok
/home/vagrant/.swat/.cache/24579/prove/dancer_placeholders/00.GET.t ..
ok 1 - dancer is running . pid: 24666
#
ok 2 - GET 127.0.0.1:5000/hello/hello-swat succeeded
# response saved to /home/vagrant/.swat/.cache/24579/prove/F4CzP0K4zS
ok 3 - GET /hello/hello-swat returns 200 OK
ok 4 - GET /hello/hello-swat returns hello-swat
ok 5 - GET /hello/hello-swat matches Server: Perl Dancer2 (\d+.\d+)
ok 6 - response is already set
# response saved to /home/vagrant/.swat/.cache/24579/prove/r9BgVCNVLG
ok 7 - GET /dancer_placeholders returns success
1..7
ok
/home/vagrant/.swat/.cache/24579/prove/method_any/00.GET.t ...........
ok 1 - dancer is running . pid: 24678
#
ok 2 - GET 127.0.0.1:5000/myaction succeeded
# response saved to /home/vagrant/.swat/.cache/24579/prove/OxeEnclYD1
ok 3 - GET /myaction returns 200 OK
ok 4 - GET /myaction returns any
ok 5 - POST 127.0.0.1:5000/myaction succeeded
# response saved to /home/vagrant/.swat/.cache/24579/prove/1LiEeaBT6S
ok 6 - POST /myaction returns 200 OK
ok 7 - POST /myaction returns any
ok 8 - response is already set
# response saved to /home/vagrant/.swat/.cache/24579/prove/osrPOqiUwG
ok 9 - GET /method_any returns success
1..9
ok
/home/vagrant/.swat/.cache/24579/prove/dancer_cookies/00.GET.t .......
ok 1 - dancer is running . pid: 24692
#
ok 2 - GET 127.0.0.1:5000/cookie succeeded
# response saved to /home/vagrant/.swat/.cache/24579/prove/gkb8lyZwp8
ok 3 - GET /cookie returns 200 OK
ok 4 - GET /cookie returns swat
ok 5 - response is already set
# response saved to /home/vagrant/.swat/.cache/24579/prove/3bq07oNCVR
ok 6 - GET /dancer_cookies returns success
1..6
ok
All tests successful.
Files=5, Tests=36,  3 wallclock secs ( 0.06 usr  0.00 sys +  2.60 cusr  0.16 csys =  2.82 CPU)
Result: PASS
vagrant@Debian-jessie-amd64-netboot:~/projects/swat-examples/dancer$

```
# COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

# AUTHOR

Alexey Melezhik
