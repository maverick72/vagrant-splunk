# splunk init module for splunkAppSideViewUtils
class splunkAppSideViewUtils {
  common::tarball{ $::sideview_utils_tgz :
    source_path => 'file:///media/apps/',
    install_dir => '/opt/splunk/etc/apps/',
    pkg_tgz     =>  $::sideview_utils_tgz ,
    require     => Package['splunk'],
    notify      => Service['splunk']
  }
}
