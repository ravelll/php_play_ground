include_recipe './phpenv_installer.rb'

execute 'install php' do
  user 'root'
  command 'echo "PATH=$PATH:/usr/local/phpenv/bin/:/usr/local/phpenv/versions/7.0.7/bin" >> /etc/profile;\
  source /etc/profile;\
  phpenv install 7.0.7;\
  phpenv global 7.0.7'
  not_if 'test -d /usr/local/phpenv/versions/7.0.7'
end
