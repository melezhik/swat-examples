source  $safe_project/swat.ini
export  safe_project
export  port
export  nginx_skip_install
bash    $safe_project/install-nginx.bash 1>/tmp/install-nginx.log 2>&1 || ( cat /tmp/install-nginx.log && exit 1);

