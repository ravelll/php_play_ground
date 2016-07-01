package 'nginx' do
  action :install
end

remote_file '/etc/nginx/nginx.conf'
remote_file '/etc/nginx/conf.d/php_fpm.conf'

service 'nginx' do
  action [:enable, :start]
end

directory '/var/www' do
  action :create
end

link '/var/www/app' do
  action :create
  to '/vagrant/app'
end
