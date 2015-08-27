use inc::Module::Install;

# Define metadata
name           'swat-mongodb';
all_from       'lib/swat/mongodb.pm';
abstract       'swat test for mongodb restapi';

# Specific dependencies
configure_requires 'File::ShareDir';
requires       'swat'         => '0.1.34';
test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::mongodb', 'share';    

license 'perl';

WriteAll;

