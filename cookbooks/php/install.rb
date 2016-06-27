include_recipe './phpenv_installer.rb'

remote_file '/etc/php-fpm.conf'

execute 'install php' do
  user 'root'
  command 'echo "PATH=$PATH:/usr/local/phpenv/bin/:/usr/local/phpenv/versions/7.0.7/bin" >> /etc/profile;\
  source /etc/profile;\
  phpenv install 7.0.7;\
  phpenv global 7.0.7'
  not_if 'test -d /usr/local/phpenv/versions/7.0.7'
end

package 'php-fpm' do
  action :install
end

service 'php-fpm' do
  action [:enable, :start]
end
