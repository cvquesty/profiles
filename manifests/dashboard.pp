# Dashboard profile to load Puppet Dashboard
#
class profiles::dashboard {

  include ::mysql
  include ::apache
  include ::passenger

  class {'dashboard':
    dashboard_ensure   => 'present',
    dashboard_dbhost   => 'localhost',
    dashboard_dbport   => '3306',
    dashboard_user     => 'puppet-dbuser',
    dashboard_group    => 'puppet-dbgroup',
    dashboard_password => 'changeme',
    dashboard_db       => 'dashboard_prod',
    dashboard_charset  => 'utf8',
    dashboard_site     => $::fqdn,
    dashboard_port     => '8080',
    mysql_root_pw      => 'changemetoo',
    passenger          => true,
  }
}
