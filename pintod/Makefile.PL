use inc::Module::Install;

# Define metadata
name           'swat-pintod';
all_from       'lib/swat/pintod.pm';

# Specific dependencies
configure_requires 'File::ShareDir';
requires       'swat'         => '0.1.28';
test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::pintod', 'share';    

license 'perl';

WriteAll;

