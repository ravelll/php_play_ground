include_recipe './phpenv_installer.rb'

execute 'install php' do
  user 'root'
  command 'export PATH=$PATH:/usr/local/phpenv/bin/;\
  phpenv install 7.0.7;\
  phpenv global 7.0.7'
end
