# Profile to configure and install GitLba
class profiles::gitlab {

  class { 'gitlab':
    external_url => 'http://server.questy.org',
  }

}
