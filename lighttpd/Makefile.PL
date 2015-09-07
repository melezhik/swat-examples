use inc::Module::Install;

# Define metadata
name           'swat-lighttpd';
all_from       'lib/swat/lighttpd.pm';
abstract       'swat tests for lighttpd server';

# Specific dependencies
configure_requires 'File::ShareDir';

requires       'swat'         => '0.1.42';
requires       'Plack';
requires       'FCGI::ProcManager';
requires       'FCGI';
requires       'File::ShareDir';
test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::lighttpd', 'share';    

license 'perl';

WriteAll;
