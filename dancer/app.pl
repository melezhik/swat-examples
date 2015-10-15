#!/usr/bin/perl

use Dancer2;

set public_dir => "$ENV{project_root_dir}/public";

get '/hello/:name' => sub {
    return "Why, hello there " . param('name')."\n";
};

any ['get', 'post'] => '/myaction' => sub {
    return "any"
};

get '/cookie' => sub {
    my $cookie = cookies->{name};
    return $cookie->value;
};

get '/appname' => sub {
    return "This is " . config->{appname};
};

get 'static/:file' => sub {
    content_type 'text/plain';
    send_file(params->{file});
};

dance;

