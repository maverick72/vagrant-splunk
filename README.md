vagrant-splunk
==============

October 2016 version of pvanisacker/vagrant-splunk original code

- Updated with newer version of splunk engine, forwarder and apps.
- Supports new vagrant puppet version
- Passes puppet-lint and puppet style guide check
- Don't forget to download the updated packages and apps and put
  them in /rpms /apps folders

** Note **

splunk-standalone
splunk-with-forwarder
splunk-cluster
splunk-cluster-with-forwarder

have been done at the moment.  Working on the rest should comme this week (10/10/2016)

Original README restrictions form pvanisacker still apply
=========================================================

This is a collection of vagrant configuration files for VirtualBox instances running different Splunk setups.

The purpose of them is to allow you to easily get started with Splunk.

Currently the following boxes exist
- splunk-standalone: simple splunk installation on one host
- splunk-with-forwarder: splunk installation on one host, splunk forwarder on another host
- splunk-cluster: splunk cluster configuration with 3 slaves, 1 master and 1 searchhead
- splunk-cluster-with-forwarder: same as above but with one forwarder
- splunk-searchheadpool-cluster: splunk search head pool with one splunk cluster
- splunk-searchheadpool-cluster-with-forwarder: splunk search head pool with one splunk cluster and a forwarder

Some notes:
- You cannot run all of these at same time as there will be name collisions in VM names.
- This has only been tested on VirtualBox. Not on VMware or AWS
- You'll need quite a bit of RAM memory to run some of the more advanced setups.
