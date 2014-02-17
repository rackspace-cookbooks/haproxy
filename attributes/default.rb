#
# Cookbook Name:: rackspace_haproxy
# Default:: default
#
# Copyright 2010, Opscode, Inc.
# Copyright 2014, Rackspace US, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['rackspace_haproxy']['incoming_address'] = "0.0.0.0"
default['rackspace_haproxy']['incoming_port'] = 80
default['rackspace_haproxy']['member_port'] = 8080
default['rackspace_haproxy']['app_server_role'] = "webserver"
default['rackspace_haproxy']['balance_algorithm'] = "roundrobin"
default['rackspace_haproxy']['enable_ssl'] = false
default['rackspace_haproxy']['ssl_incoming_address'] = "0.0.0.0"
default['rackspace_haproxy']['ssl_incoming_port'] = 443
default['rackspace_haproxy']['ssl_member_port'] = 8443
default['rackspace_haproxy']['httpchk'] = nil
default['rackspace_haproxy']['ssl_httpchk'] = nil
default['rackspace_haproxy']['enable_admin'] = true
default['rackspace_haproxy']['admin']['address_bind'] = "127.0.0.1"
default['rackspace_haproxy']['admin']['port'] = 22002
default['rackspace_haproxy']['enable_stats_socket'] = false
default['rackspace_haproxy']['stats_socket_path'] = "/var/run/haproxy.sock"
default['rackspace_haproxy']['pid_file'] = "/var/run/haproxy.pid"

default['rackspace_haproxy']['defaults_options'] = ["httplog", "dontlognull", "redispatch"]
default['rackspace_haproxy']['x_forwarded_for'] = false
default['rackspace_haproxy']['defaults_timeouts']['connect'] = "5s"
default['rackspace_haproxy']['defaults_timeouts']['client'] = "50s"
default['rackspace_haproxy']['defaults_timeouts']['server'] = "50s"
default['rackspace_haproxy']['cookie'] = nil

default['rackspace_haproxy']['user'] = "haproxy"
default['rackspace_haproxy']['group'] = "haproxy"

default['rackspace_haproxy']['global_max_connections'] = 4096
default['rackspace_haproxy']['member_max_connections'] = 100
default['rackspace_haproxy']['frontend_max_connections'] = 2000
default['rackspace_haproxy']['frontend_ssl_max_connections'] = 2000

default['rackspace_haproxy']['conf_dir'] = '/etc/haproxy'

default['rackspace_haproxy']['template_cookbook']['haproxy_default'] = 'rackspace_haproxy'
default['rackspace_haproxy']['template_cookbook']['haproxy_cfg'] = 'rackspace_haproxy'
default['rackspace_haproxy']['template_cookbook']['haproxy_app_lb'] = 'rackspace_haproxy'
