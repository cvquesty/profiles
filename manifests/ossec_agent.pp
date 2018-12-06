# Profile to configure an OSSEC HIDS Agent Node
class profiles::ossec_agent {

  class { 'ossec':
    nodetype => 'agent',
  }

}
