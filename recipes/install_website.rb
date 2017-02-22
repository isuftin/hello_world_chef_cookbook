#
# Cookbook:: hello_world
# Recipe:: install_website
# Description:: Installs hello_world website

filename = '/var/www/html/hello_world.html'
generated_time = Time.now.getutc

directory '/var/www/html' do
  recursive true
  owner 'root'
  group 'root'
  mode 0o755
end

template filename do
  source 'hello_world.html.erb'
  owner 'apache'
  group 'apache'
  mode 0o755
  variables(
    author_name: node['hello_world']['content']['author_name'],
    os: "#{node['platform']} #{node['platform_version']}",
    generated_time: generated_time
  )
end
