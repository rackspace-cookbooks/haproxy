# encoding: UTF-8

require 'spec_helper'

describe 'rackspace_haproxy::default' do
  let(:chef_run) { ChefSpec::Runner.new(platform: 'centos', version: '6.4').converge(described_recipe) }

  it 'installs haproxy package' do
    expect(chef_run).to install_package('haproxy')
  end
end
