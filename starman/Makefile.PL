use inc::Module::Install;

# Define metadata
name           'swat-starman';
all_from       'lib/swat/starman.pm';
abstract       'swat tests for starman web server';

# Specific dependencies
configure_requires 'File::ShareDir';

requires       'swat'         => '0.1.39';
requires       'starman';
requires       'File::ShareDir';
 
test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::starman', 'share';    

license 'perl';

WriteAll;

