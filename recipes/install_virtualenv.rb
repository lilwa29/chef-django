#
# Cookbook:: django
# Recipe:: install_virtualenv
#
# Copyright:: 2019, The Authors, All Rights Reserved.

execute 'apt-get update'

package 'python3-pip'

execute 'pip3 install virtualenv'

directory 'newproject'

execute 'virtualenv newenv' do
  command 'virtualenv newenv'
  cwd '/newproject'
end

 execute 'source newenv/bin/activate' do
   command '. newenv/bin/activate'
   cwd '/newproject'
 end

execute 'pip3 install django' do
  command ' pip3 install django==1.7.5'
  cwd '/newproject'
end
