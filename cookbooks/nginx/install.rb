package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

# remote_file "/etc/nginx/conf.d/static.conf"
# template "/etc/nginx/conf.d/dynamic.conf"
