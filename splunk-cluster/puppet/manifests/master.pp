include system
include splunk
include splunk_master
include splunk_app_sos
include splunk_app_sideview_utils
include splunk_master_app_addon_for_nix
include splunk_master_app_addon_for_sos
class {'splunk_outputs':
  type => 'splunk'
}
class {'splunk_app_addon_for_nix':
  install_dir =>'/opt/splunk/etc/master-apps',
  require     => Package['splunk'],
  notify      => Service['splunk']
}
file {'/opt/splunk/etc/apps/Splunk_TA_nix':
  source  => '/opt/splunk/etc/master-apps/Splunk_TA_nix',
  recurse => true,
  require => [Package['splunk'],Class['splunk_app_addon_for_nix']],
  notify  => Service['splunk']
}
class {'splunk_app_addon_for_sos':
  install_dir =>'/opt/splunk/etc/master-apps',
  require     => Package['splunk'],
  notify      => Service['splunk']
}
