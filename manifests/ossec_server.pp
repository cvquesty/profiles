# Profile to configure an OSSEC HIDS Server Node
class profiles::ossec_server {

  class { 'ossec':
    nodetype => 'server',
  }

}
