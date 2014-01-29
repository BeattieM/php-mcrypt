#
# Cookbook Name:: php-mcrypt
# Recipe:: default
#
# Copyright 2014, Michael Beattie
#
# Licensed under the MIT License.
# You may obtain a copy of the License at
#
#     http://opensource.org/licenses/MIT
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node[:platform]
when "ubuntu","debian"
	include_recipe "php"
	
	package "php-mcrypt" do
	  package_name "php5-mcrypt"
	  action :install
	end
end

template "#{node['php']['ext_conf_dir']}/mcrypt.ini" do
  mode "0644"
end