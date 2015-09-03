use File::ShareDir;
use Digest::MD5;

sub {
    my $env = shift;
    my $body;
    my $clen = $env->{CONTENT_LENGTH};
    while ($clen > 0) {
        $env->{'psgi.input'}->read(my $buf, $clen) or last;
        $clen -= length $buf;
        $body .= $buf;
    }
    return [ 200, [ 'Content-Type', 'text/plain', 'X-Content-Length', $env->{CONTENT_LENGTH} ], [ $body ] ];
    #return [ 200, [ 'Content-Type', 'text/plain', 'X-Content-Length', 10 ], [ 'OK' ] ];

};



BEGIN {

my $file = File::ShareDir::dist_dir('Plack') . "/baybridge.jpg";

open my $fh, "<", $file or die $!;
my $md5 = Digest::MD5->new;
$md5->addfile($fh);
my $hex = $md5->hexdigest;


open my $fh, "<:raw", $file;
local $/ = \1024;

my $cont = scalar <$fh>;

open F, ">", "/tmp/foo.content" or die $!;
print F $cont;
close F; 


}
