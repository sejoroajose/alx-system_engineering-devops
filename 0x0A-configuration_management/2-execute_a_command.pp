# 2-execute_a_command.pp

exec { 'kill_killmenow_process':
  command => 'pkill -f killmenow',
  path    => ['/bin', '/usr/bin', '/usr/local/bin'],
  onlyif  => 'pgrep -f killmenow',
}
