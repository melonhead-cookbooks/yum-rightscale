# Encoding: utf-8
#
# Author:: MeLoNHEaD aka Danny Knapp (<the.melonhead@gmail.com>)
# Cookbook Name:: yum-rightscale
# Recipe:: default
#
# Copyright:: Copyright (c) 2014 Salesforce Pardot
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

include_recipe "yum::default"

if platform_family?("rhel") && node['platform_version'].to_i < 6
	file "/etc/yum.repos.d/CentOS-Base.repo" do
		action :delete
	end

	template "/etc/yum.repos.d/rightscale-repos.repo" do
		source 'rightscale-repos.repo.erb'
	end
end
