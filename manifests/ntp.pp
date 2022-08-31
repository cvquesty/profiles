# Profile to configure NTP
class profiles::ntp (
  Array $servers,
){

  class { 'ntp':
    servers => $servers,
  }
}
