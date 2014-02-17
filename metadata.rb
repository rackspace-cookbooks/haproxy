name              'rackspace_haproxy'
maintainer        'Rackspace US, Inc.'
maintainer_email  'rackspace-cookbooks@rackspace.com'
license           'Apache 2.0'
description       'Installs and configures haproxy'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '2.0.0'

%w{ debian ubuntu centos redhat}.each do |os|
  supports os
end

depends           "cpu", ">= 0.2.0"

