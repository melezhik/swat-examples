use inc::Module::Install;

# Define metadata
name           'swat-django';
all_from       'lib/swat/django.pm';
abstract       'swat test for django application';

# Specific dependencies
configure_requires 'File::ShareDir';
requires       'swat'         => '0.1.37';
test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::django', 'share';    

license 'perl';

WriteAll;

