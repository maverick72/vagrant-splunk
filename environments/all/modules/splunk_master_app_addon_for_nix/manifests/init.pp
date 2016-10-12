# splunk manifest for app addon for nix
class splunk_master_app_addon_for_nix {
  file { '/opt/splunk/etc/master-apps/Splunk_TA_nix/local/indexes.conf':
    ensure  => 'file',
    source  => 'puppet:///modules/splunk_master_app_addon_for_nix/Splunk_TA_nix/local/indexes.conf',
    notify  => Service['splunk'],
    require => File['/opt/splunk/etc/master-apps/Splunk_TA_nix/local/']
  }
}
