VERSION = "2.5.0"
default['protobuf']['version'] = VERSION
default['protobuf']['download_url'] = "https://protobuf.googlecode.com/files/protobuf-#{node['protobuf']['version']}.tar.gz"
default['protobuf']['download_dir'] = "/root/source"
default['protobuf']['prefix'] = "/opt/protobuf-#{node['protobuf']['version']}"
