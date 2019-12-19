plan counting::counting (
	TargetSpec	$targets
) {
	run_task(
		'counting::count',
		'counting::until',
		$targets,
	)
}