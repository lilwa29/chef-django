#
# Cookbook:: django
# Recipe:: install_packages
#
# Copyright:: 2019, The Authors, All Rights Reserved.

execute 'apt-get update' do
  command 'apt-get update'
end

package 'python-django'
