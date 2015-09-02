if  test -f /tmp/app.pid  && ps --pid `cat /tmp/app.pid` 1>/dev/null 2>&1; then
    kill `cat /tmp/app.pid` || ( echo 'could not stop starman!'; exit 1 )
    ps uax | grep starman | grep -v grep && ( echo 'tried to kill starman by pid /tmp/app.pid but it is still alive'; exit 1 )
    exit 0

else
    echo 'could not find starman at process list'; exit 1
fi


