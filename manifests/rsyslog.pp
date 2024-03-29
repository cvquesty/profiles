# Profile to configure Rsyslog
class profiles::rsyslog {

  # Configure the SysLog Daemon
  class { 'rsyslog': }

  # Be sure to rotate the syslogs
  logrotate::rule { 'messages':
    path         => '/var/log/messages',
    rotate       => 10,
    rotate_every => 'day',
    postrotate   => 'systemctl restart rsyslog',
    require      => Class['profiles::logrotate'],
  }
}
