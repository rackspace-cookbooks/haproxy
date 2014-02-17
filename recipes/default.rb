#
# Cookbook Name:: rackspace_haproxy
# Recipe:: default
#
# Copyright 2009, Opscode, Inc.
# Copyright 2014, Rackspace US, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'rackspace_haproxy::install_package'

cookbook_file '/etc/default/haproxy' do
  cookbook node['rackspace_haproxy']['template_cookbook']['haproxy_default']
  source 'haproxy-default'
  owner 'root'
  group 'root'
  mode 00644
  notifies :restart, 'service[haproxy]'
end

template "#{node['rackspace_haproxy']['conf_dir']}/haproxy.cfg" do
  cookbook node['rackspace_haproxy']['template_cookbook']['haproxy_cfg']
  source 'haproxy.cfg.erb'
  owner 'root'
  group 'root'
  mode 00644
  notifies :reload, 'service[haproxy]'
  variables(
    :defaults_options => haproxy_defaults_options,
    :defaults_timeouts => haproxy_defaults_timeouts
  )
end

service 'haproxy' do
  supports :restart => true, :status => true, :reload => true
  action [:enable, :start]
end