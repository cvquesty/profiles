# This Profiles is intended to manage the Puppet Server settings
#
class profiles::puppet_settings {

  ensure_packages(
    ['toml-rb'],
    {ensure   => 'present', provider => 'puppetserver_gem' }
  )

}
