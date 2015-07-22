# swat-packages

Swat packages are distributable swat tests

# create package

    tar -zcf $project_root_dir.tar.gz project_root_dir

For example for package nginx:

    tar -zcf nginx.tar.gz ./nginx

# upload package to swat repository 

Swat repository is _ANY_ web server 

    sudo cp nginx.tar.gz /var/www/html/
    # check for package existence
    curl -s 127.0.0.1/nginx.tar.gz -D - -o /dev/null  | head  -n 1
    HTTP/1.1 200 OK

# Run swat tests

    # test nginx server at 192.168.0.1 using swat package 
    swat_repo=127.0.0.1 swat nginx 192.168.0.1




