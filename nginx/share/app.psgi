use strict;
sub {
    my $env = shift;
    return [ 200, [ "Content-Type", "text/plain" ], [ "GOOD" ] ];
};

