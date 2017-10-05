class profile::base(
  $ntp_servers = [
    '0.centos.pool.org',
    '1.centos.pool.org',
  ]
) {
    include '::ssh'
    class { '::ntp':
      servers => $ntp_servers,
    }

  if $facts['os']['family'] == 'RedHat' {
    include ::profile::selinux
  }
}
