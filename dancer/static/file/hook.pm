modify_resource(sub{
    my $r = shift;
    my $project_root_dir = project_root_dir();
    my $file = `ls $project_root_dir/public | shuf -n 1`;
    chomp $file;
    our $file_path = "$project_root_dir/public/$file";
    s{file}[$file] for $r;
    $r;
});
