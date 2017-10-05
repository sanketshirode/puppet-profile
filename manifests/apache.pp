class profile::apache(
  Boolean $default_vhost = false,
  Hash $apache_vhost_servers,
#  Integer $port          = 80,
#  String $docroot        = '/var/www/test' 
){
  class { '::apache':
    default_vhost => $default_vhost,
  } 
 
  create_resources(::apache::vhost,$apache_vhost_servers)
#  ::apache::vhost { 'agent.x2xzcvoo2jhetkaiuuavy0nw3d.sx.internal.cloudapp.net':
#    port    => $port,
#    docroot => $docroot,
#  }
  
#  file { "${docroot}/index.html":
#    ensure  => file,
#    content => 'Test page. This is a test',
#  }
}
