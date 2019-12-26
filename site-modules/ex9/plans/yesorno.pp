# TargetSpec accepts a comma-separated list of targets
plan ex9::yesorno (TargetSpec $targets) {
  # Run the 'ex9::yesorno' task on the targets you specify.
  $results = run_task('ex9::yesorno', $targets)

  # Puppet uses immutable variables. That means we have to operate on data, in
  # this case a ResultSet containing a list of Results. Those are documented in
  # Bolt's docs, but effectively it's a list of result data parsed from JSON
  # objects returned by the task. Collect - "filter" - only the Result objects
  # where the task printed '{"answer": true}'.
  $answered_true = $results.filter |$result| { $result[answer] == true }

  # Result objects also include a reference to the target they came from. Get a
  # list of the targets that answered 'true'.
  $subset = $answered_true.map |$result| { $result.target }

  # Run the 'uptime' command on the list of targets that answered 'true'.
  return run_command('uptime', $subset)
}
