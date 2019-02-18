# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html
resource_name :pip

action :install do
  execute 'pip3 install django==1.7.5'
end
