#
# Cookbook:: solr-docker
# Recipe:: default
#
# Copyright:: 2017, Nick White
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
require 'pp'

template '/etc/motd' do
  source 'motd.erb'
  mode '0644'
end

cookbook_file '/etc/profile.d/motd.sh' do
  source 'motd.sh'
  mode '0755'
end

# Install Oracle JDK
include_recipe 'java'

# Setup attributes for 'solr' cookbook
pp node.debug_value('solr', 'install_java')

node.default['solr']['version'] = '6.6.0'
#node.default['solr']['url'] = 'https://archive.apache.org/dist/lucene/solr/4.10.3/solr-4.10.3.tgz'
# Solr 6.6.0
node.default['solr']['url'] = 'https://archive.apache.org/dist/lucene/solr/6.6.0/solr-6.6.0.tgz'
# Use a local copy of the file for speed
#node.default['solr']['url'] = 'file:///Users/nwhite/Downloads/solr-6.6.0.tgz'

# 4.10.3 - Get SHA256 checksum for tarball on MacOS: shasum -a 256 <file>
#node.default['solr']['checksum'] = 'ac7024a0a759c6c53cc3a66b3a84757d599d350f491eb221160613356532e2b6'
#node.default['solr']['data_dir'] = '/opt/solr-4.10.3/example/solr'

# 6.6.0 - Get SHA256 checksum for tarball on MacOS: shasum -a 256 <file>
node.default['solr']['checksum'] = '6b1d1ed0b74aef320633b40a38a790477e00d75b56b9cdc578533235315ffa1e'
node.default['solr']['data_dir'] = '/opt/solr-6.6.0/example/solr'

node.default['solr']['install_java'] = false

# Run the 'solr' cookbook
include_recipe 'solr'
