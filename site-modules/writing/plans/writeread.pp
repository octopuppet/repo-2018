plan writing::writeread (
    TargetSpec  $targets,
    String      $filename,
    String      $content = "hello world",
) {
    run_task(
        'writing::write',
        $targets,
        filename => $filename,
        content => $content,
    )
    return run_command("cat /tmp/${filename}", $targets)
}
