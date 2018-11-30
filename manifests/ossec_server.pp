# Profile to configure an OSSEC HIDS Server Node
class profiles::ossec_server {

  Class['::ossec::repo']
  -> Class['::ossec::server']

}
