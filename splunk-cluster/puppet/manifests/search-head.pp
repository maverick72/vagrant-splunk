include system
include splunk
include splunk_search_head
include splunk_app_for_nix
include splunk_app_sos
include splunk_app_sideview_utils
class {'splunk_outputs':
  type => 'splunk'
}
