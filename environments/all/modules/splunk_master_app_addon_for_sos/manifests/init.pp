# splunk app addon for sos manifest
class splunk_master_app_addon_for_sos {
  file { '/opt/splunk/etc/master-apps/TA-sos/local/indexes.conf':
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    recurse => true,
    source  => 'puppet:///modules/splunk_master_app_addon_for_sos/TA-sos/local/indexes.conf',
    notify  => Service['splunk'],
    require => File['/opt/splunk/etc/master-apps/TA-sos/local']
  }
}
