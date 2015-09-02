
sub {
    my $env = shift;
    return sub {
        my $response = shift;
        my $writer = $response->([ 200, [ 'Content-Type', 'text/plain' ]]);
        $writer->write("Content");
        $writer->write("");
        $writer->write("Again");
        $writer->close;
    }
};

