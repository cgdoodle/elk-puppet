# == Class: class_name
#
class puppet-learn::vhost(
  $port=6969,
  $hostName = 'doodle.com'
  ) {
  # resource
  $url = "${ip_eth0}+"
  file { "/etc/apache2/conf.d/${hostName}.conf":
    ensure => file,
    mode => '0644',
    content => template('puppet-learn/vhost.conf')
  }

}
