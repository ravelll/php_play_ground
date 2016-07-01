include_recipe './phpenv_installer.rb'

execute 'install php' do
  user 'root'
  command 'echo "PATH=$PATH:/usr/local/phpenv/bin/:/usr/local/phpenv/versions/7.0.8/bin" >> /etc/profile;\
  source /etc/profile;\
  phpenv install 7.0.8;\
  phpenv global 7.0.8'
  not_if 'test -d /usr/local/phpenv/versions/7.0.8'
end

remote_file '/usr/local/phpenv/versions/7.0.8/etc/php.ini'

include_recipe './memcached.rb'
include_recipe './php-fpm.rb'
