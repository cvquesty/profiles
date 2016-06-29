# Profile to install GitLab
#
class profiles::gitlab {

  class { 'gitlab':
    external_url => 'http://development.puppetlabs.vm',
  }

}
