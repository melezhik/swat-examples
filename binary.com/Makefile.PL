use inc::Module::Install;

# Define metadata
name           'swat-bdc';
all_from       'lib/swat/bdc.pm';
abstract       'swat test for binary.com';

# Specific dependencies
configure_requires 'File::ShareDir';
requires       'swat'         => '0.1.37';
test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::bdc', 'share';    

license 'perl';

WriteAll;

