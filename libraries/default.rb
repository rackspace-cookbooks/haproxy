def haproxy_defaults_options
  options = node['rackspace_haproxy']['defaults_options']
  if node['rackspace_haproxy']['x_forwarded_for']
    options.push('forwardfor')
  end
  return options.uniq
end

def haproxy_defaults_timeouts
  node['rackspace_haproxy']['defaults_timeouts']
end
