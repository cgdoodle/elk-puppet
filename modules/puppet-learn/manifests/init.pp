# == Class: class_name
#
class puppet-learn(
  $port=6969,
  $hostName = 'doodle.com'
  )  {
  # resources
  package { 'apache-doodle':
    name => 'apache2',
    ensure => installed
  }

  $login_path='/home/doodle/logs/doodle.log'

  file {'/etc/apache2/httpd.conf':
    ensure => present,
    content => template('puppet-learn/first.erb')
    notify => Service['apache']
  }

  service { 'apache':
    name => 'apache2',
    ensure => running,
    enable => true,
    hasrestart => true,
    hasstatus  => true,
    # pattern => 'apache2',
  }
  class{ 'puppet-learn::vhost':
    port=> $port
    vhostName => $vhost 
  }
}
