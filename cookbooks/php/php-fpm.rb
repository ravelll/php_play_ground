remote_file '/etc/php-fpm.conf'

package 'php-fpm' do
  action :install
end

service 'php-fpm' do
  action [:enable, :start]
end
