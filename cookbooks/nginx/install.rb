package 'nginx' do
  action :install
end

remote_file '/etc/nginx/nginx.conf'
remote_file '/etc/nginx/conf.d/php_fpm.conf'

service 'nginx' do
  action [:enable, :start]
end

directory '/var/www/app' do
  action :create
end
