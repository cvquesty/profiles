# Profile to configure NTP
class profiles::ntp (
  String $servers,
){

  class { 'ntp':
    servers => $servers,
  }

}
