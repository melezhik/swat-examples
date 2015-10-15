use swat::dancer;

stop_dancer_app();
start_dancer_app();

run_swat_module( GET => 'hello/name' );

set_response('success');

stop_dancer_app();

1;

