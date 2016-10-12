# NFS class manifest
class nfsclient {
  mount { '/nfsshare':
    ensure  => 'mounted',
    device  => '192.168.50.3:/nfsshare',
    fstype  => 'nfs',
    options => 'defaults',
    atboot  => true,
    require => [Package['nfs-utils'],Package['nfs-utils-lib'],File['/nfsshare']]
  }
  file { '/nfsshare':
    ensure => 'directory'
  }
  package { ['nfs-utils','nfs-utils-lib']:
    ensure => 'installed'
  }
}
