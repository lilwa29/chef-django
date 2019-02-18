#
# Cookbook:: django
# Recipe:: install_git
#
# Copyright:: 2019, The Authors, All Rights Reserved.
execute 'apt-get update'

package 'git'
package 'python3-pip'

execute 'git clone git://github.com/django/django ~/django-dev'
execute 'pip3 install -e ~/django-dev'
