package swat::django;
our $VERSION = '0.1.0';
1;

__END__


=head1 SYNOPSIS

Swat tests for django application. 

This is simple test suit could be used in various CI processes, f.e. when running tests in Travis.

A limited set of routes is tested. GET / and GET /admin/auth/user . An admin login and password are setup in swat.my file


=head1 INSTALL

    perl Makefile.PL
    make
    make test
    make install

=head1 USAGE

Install django

    $ sudo apt-get install python-django

Create a project and setup an admin interface

    $ django-admin startproject mysite
    $ cd mysite
    $ python manage.py migrate
    $ python manage.py createsuperuser
    

Run django application

    $ python manage.py runserver

Setup swat settings

    $ echo 'username=admin' > swat.my   # or whatever username you created when run `python manage.py createsuperuser`
    $ echo 'password=admin' >> swat.my  # or whatever password you created when run `python manage.py createsuperuser`

Run swat tests

    $ swat swat::django 127.0.0.1:8000


=head1 COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


=head1 AUTHOR

Alexey Melezhik


