# Profile to configure NTP
class profiles::ntp {

  $ntp_servers = lookup('profiles::ntp::servers')

  class { 'ntp':
    servers => $ntp_servers,
  }

}
