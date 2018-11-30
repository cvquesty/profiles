# Profile to configure an OSSEC HIDS Agent Node
class profiles::ossec_agent {

  Class['::ossec::repo']
  -> Class['::ossec::agent']

}
