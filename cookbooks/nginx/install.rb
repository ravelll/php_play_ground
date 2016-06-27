remote_file '/etc/nginx/nginx.conf'
remote_file '/etc/nginx/conf.d/php_fpm.conf'

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end
