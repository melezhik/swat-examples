use inc::Module::Install;

# Define metadata
name           'swat-nginx';
all_from       'lib/swat/nginx.pm';
abstract       'swat tests for nginx server';

# Specific dependencies
configure_requires 'File::ShareDir';

requires       'swat'         => '0.1.39';
requires       'nginx';
requires       'File::ShareDir';
 
test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::nginx', 'share';    

license 'perl';

WriteAll;

