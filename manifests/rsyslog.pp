# Profile to configure RSyslog
class profiles::rsyslog {

  # Rsyslog
  class { 'rsyslog::config':
    main_queue_opts => {
      queue.maxdiskspace     => '1000G',
      queue.dequeuebatchsize => 1000,
    }
  }

  # Set logrotate rule for Syslog
  logrotate::rule { 'messages':
    path         => '/var/log/syslog',
    rotate       => 10,
    rotate_every => 'day',
    postrotate   => 'systemctl restart rsyslog',
    require      => Class['profiles::logrotate'],
  }
}
