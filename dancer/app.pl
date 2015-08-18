#!/usr/bin/perl
    use Dancer;

    get '/hello/:name' => sub {
        return "Why, hello there " . param('name')."\n";
    };

    any ['get', 'post'] => '/myaction' => sub {
        return "any"
    };

dance;

