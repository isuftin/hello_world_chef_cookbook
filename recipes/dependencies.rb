#
# Cookbook:: hello_world
# Recipe:: dependencies
# Description:: Installs dependencies for Apache

package 'httpd'

service 'httpd' do
  action [:enable, :start]
end
