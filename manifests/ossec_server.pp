# Profile to configure an OSSEC HIDS Server Node
class profiles::ossec_server {

include [ '::ossec::repo' ]
include ['::ossec::server' ]

  Class['::ossec::repo']
  -> Class['::ossec::server']

}
