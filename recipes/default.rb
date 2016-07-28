#
# Cookbook Name:: apm
# Recipe:: default
#
# Author:: Djuri Baars <dsbaars@gmail.com>
#
# Copyright 2014, Djuri Baars
#
# Based on balbeko's chef-npm
# Copyright 2012, Sergey Balbeko
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

execute "Make sure the current user #{node['user']['id']} owns /Users/#{node['user']['id']}/.atom" do
  command "chown -R #{node['user']['id']} /Users/#{node['user']['id']}/.atom"
  only_if do ::File.exists?("/Users/#{node['user']['id']}/.atom") end
end

node['apm']['packages'].each do |package|
  apm_package package
end
