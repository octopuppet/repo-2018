plan counting::counting (
    TargetSpec  $targets,
) {
    run_task(
        'counting::count',
        $targets,
    )
    run_task(
        'counting::until',
        $targets,
    )
}
