#
# Cookbook:: django
# Recipe:: install_pip
#
# Copyright:: 2019, The Authors, All Rights Reserved.

execute 'apt-get update'

package 'python3-pip'

pip 'django' do
  action :install
end
