# Profile to configure an OSSEC HIDS Server Node
class profiles::ossec_server {

  class { 'ossec':
    nodetype           => 'server',
    notify_by_email    => 'yes',
    notification_email => 'someone@whocares.com',
    smtp_server        => '127.0.0.1',
    email_from_address => 'ossec@fubar.com',
  }

}
