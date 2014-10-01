#
# Cookbook Name:: protobuf
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
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

include_recipe 'build-essential'
package 'wget'

directory node['protobuf']['download_dir']

remote_file "#{node['protobuf']['download_dir']}/protobuf-#{node['protobuf']['version']}.tar.gz" do
  source node['protobuf']['download_url']
  owner "root"
  group "root"
  mode "0644"
end

execute "extract_protobuf_tarball" do
  user "root"
  cwd node['protobuf']['download_dir']
  command "tar zxf protobuf-#{node['protobuf']['version']}.tar.gz"
  creates "protobuf-#{node['protobuf']['version']}"
end

bash "install_protobuf" do
  user "root"
  cwd "#{node['protobuf']['download_dir']}/protobuf-#{node['protobuf']['version']}"
  code <<-EOH
  ./configure --prefix=#{node['protobuf']['prefix']}
  make
  make install
  EOH
  creates node['protobuf']['prefix']
end
