# Puppet Forge Profile
#
class profiles::forge {

  # Create Content Location

  # file resource defaults
  File {
    ensure => 'directory',
    owner  => 'apache',
    group  => 'apache',
    mode   => '0755',
  }

  file { '/opt/forge':
    require => Class['::apache'],
    recurse => true,
  }

  file { '/opt/forge/log':
    require => [File['/opt/forge'], Class['::apache'],],
  }

  file { '/opt/forge/public':
    require => [File['/opt/forge'], Class['::apache'],],
  }

  # Make sure the proper dependencies exist
  package { 'ruby-devel':
    ensure => 'present',
  }

  package { 'rubygems-devel':
    ensure => 'present',
  }

  # Main Application config file
  class { '::forge_server':
    cache_basedir    => '/opt/forge/cache',
    module_directory => '/opt/forge/modules',
    proxy            => 'https://forgeapi.puppetlabs.com',
    service_ensure   => 'stopped',
  } ->

  file { '/opt/forge/config.ru':
    ensure  => 'present',
    owner   => 'apache',
    group   => 'apache',
    mode    => '0644',
    require => File['/opt/forge'],
    notify  => Service['httpd'],
    source  => 'puppet:///modules/profiles/config.ru',
  }
}
