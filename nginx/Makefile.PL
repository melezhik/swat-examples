use inc::Module::Install;

# Define metadata
name           'swat-nginx';
all_from       'lib/swat/nginx.pm';
abstract       'swat tests for nginx server';

# Specific dependencies
configure_requires 'File::ShareDir';
configure_requires 'Test::Builder::Module' => '0.99'; # required for Plack::Handler::SCGI install


requires       'swat'         => '0.1.41';
requires       'Plack';
requires       'FCGI::ProcManager';
requires       'FCGI';
requires       'File::ShareDir';
requires       'Plack::Handler::SCGI'
requires       'Plack::Handler::FCGI'
test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::nginx', 'share';    

license 'perl';

WriteAll;

