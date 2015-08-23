    use inc::Module::Install;

    # Define metadata
    name           'swat-mongodb';
    all_from       'lib/swat/mongodb.pm';

    # Specific dependencies
    requires       'swat'         => '0.1.27';
    test_requires  'Test::More'   => '0';

    install_share  ;    
    
    license 'perl';

    WriteAll;

