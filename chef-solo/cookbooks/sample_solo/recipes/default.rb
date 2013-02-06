#
# Cookbook Name:: sample_solo
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

template '/tmp/chef_solo-test' do
  source 'chef_solo-test.erb'
  mode 0644
end

