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
  }

  file { '/opt/forge/log':
    require => Class['::apache'],
  }

  file { '/opt/forge/cache':
    require => Class['::apache'],
  }

  file { '/opt/forge/modules':
    require => Class['::apache'],
  }

  file { '/opt/forge/public':
    require => Class['::apache'],
  }

  # Main Application config file
  file { '/opt/forge/config.ru':
    ensure  => 'present',
    owner   => 'apache',
    group   => 'apache',
    mode    => '0644',
    require => File['/opt/forge'],
  }

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
  }
}
