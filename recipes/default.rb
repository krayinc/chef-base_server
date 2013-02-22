#
# Cookbook Name:: base-server
# Recipe:: default
#
# Copyright 2013, KRAY Inc.
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'iptables'

if platform?('fedora')
	package 'iptables-services'
end

template '/etc/iptables.d/all_ssh' do
  source 'all_ssh.erb'
  owner 'root'
  group 'root'
  mode 00644
  notifies :run, resources(:execute => 'rebuild-iptables')
end
