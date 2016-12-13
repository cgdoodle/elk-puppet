# == Class: elasticsearch-doodle
#
class elasticsearch-doodle (
    $cluster_name= 'es-01'
  ){
  # resources
  class { 'elasticsearch':
    java_install => true,
    manage_repo  => true,
    repo_version => '5.x',
    restart_on_change => true
  }
  elasticsearch::plugin { 'lmenezes/elasticsearch-kopf':
    instances => "$cluster_name"
  }
}
