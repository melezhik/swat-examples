use inc::Module::Install;

# Define metadata
name           'swat-dancer';
all_from       'lib/swat/dancer.pm';
abstract       'swat tests for dancer2';

# Specific dependencies
configure_requires 'File::ShareDir';

requires       'swat'         => '0.1.42';
requires       'Dancer2';
requires       'File::ShareDir';

requires       'Plack';
requires       'Starman';

test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::dancer', 'share';    

license 'perl';

WriteAll;

