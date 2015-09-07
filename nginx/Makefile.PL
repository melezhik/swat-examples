use inc::Module::Install;

# Define metadata
name           'swat-nginx';
all_from       'lib/swat/nginx.pm';
abstract       'swat tests for nginx';

# Specific dependencies
configure_requires 'File::ShareDir';

requires       'swat'         => '0.1.42';
requires       'Dancer2';
requires       'File::ShareDir';

requires       'Plack';
requires       'Starman';

test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::nginx', 'share';    

license 'perl';

WriteAll;

