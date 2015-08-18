#!/usr/bin/perl
    use Dancer;

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

    get '/cat/:txtfile' => sub {
        content_type 'text/plain';
        my $data;
        open  F, 'files/'.param('txtfile') or die $!;
        while (my $l = <F>){
            $data.=$l;
        }
        close F;
        return $data;
    };

dance;

