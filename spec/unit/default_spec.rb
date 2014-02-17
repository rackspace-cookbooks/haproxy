# encoding: UTF-8

require 'spec_helper'

describe 'rackspace_haproxy::default' do
  let(:chef_run) { ChefSpec::Runner.new(platform: 'centos', version: '6.4').converge(described_recipe) }

  it 'includes the install package recipe' do
    expect(chef_run).to include_recipe('rackspace_haproxy::install_package')
  end

  it 'create /etc/default/haproxy' do
    expect(chef_run).to create_cookbook_file('/etc/default/haproxy')
  end

  it 'create /etc/haproxy/haproxy.cfg' do
    expect(chef_run).to create_template('/etc/haproxy/haproxy.cfg')
  end

  it 'enables haproxy to start' do
    expect(chef_run).to enable_service('haproxy')
  end
end