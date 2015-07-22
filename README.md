# swat-packages

Swat packages are distributable [swat](https://github.com/melezhik/swat) tests

# Create swat package

Let's imagine you've got ready swat tests you want to distribute. First of all you need to create archive of
swat project root directory:

    tar -zcf $project_root_dir.tar.gz project_root_dir

For example for project ./nginx:

    tar -zcf nginx.tar.gz ./nginx

# Upload package to swat repository 

Swat repository might be  _ANY_ web server. One should upload archive into server.
Let's say we have nginx server. The example below is for debian:

    # install nginx:
    sudo apt-get install nginx

    # copy swat distributive:
    sudo cp nginx.tar.gz /var/www/html/

    # check for archive availability over web server:
    curl -s 127.0.0.1/nginx.tar.gz -D - -o /dev/null  | head  -n 1
    HTTP/1.1 200 OK

You swat repository with nginx swat package uploaded is ready!

# Run swat tests

Now it's time to use swat tests against web application:

    # test nginx server at 192.168.0.1 using swat package 
    swat_repo=127.0.0.1 swat nginx 192.168.0.1




