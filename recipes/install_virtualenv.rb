#
# Cookbook:: django
# Recipe:: install_virtualenv
#
# Copyright:: 2019, The Authors, All Rights Reserved.

execute 'apt-get update'

package 'python3-pip'

execute 'pip3 install virtualenv'
