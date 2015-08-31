use inc::Module::Install;

# Define metadata
name           'swat-binary-dot-com';
all_from       'lib/swat/BinaryDotCom.pm';
abstract       'swat test for binary.com';

# Specific dependencies
configure_requires 'File::ShareDir';
requires       'swat'         => '0.1.37';
test_requires  'Test::More'   => '0';

install_share  'module' => 'swat::BinaryDotCom', 'share';    

license 'perl';

WriteAll;

