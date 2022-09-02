# Install and manage Apache Server
class profiles::apache {

  class { 'apache':
    default_vhost => false,
  }

  logrtoate::rule { 'apache':
    path          => '/var/log/apache2/*.log',
    rotate        => 14,
    mail          => 'root',
    size          => '100m',
    sharedscripts => true,
    postrotate    => '/usr/bin/systemctl reload apache2',
  }

}
