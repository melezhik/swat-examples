use swat::dancer;

stop_dancer_app();
start_dancer_app();
run_swat_module( GET => 'myaction' );
run_swat_module( POST => 'myaction' );

set_response('success');
stop_dancer_app();

1;

