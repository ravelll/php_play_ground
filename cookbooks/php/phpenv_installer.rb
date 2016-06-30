execute 'git clone phpenv-installer' do
  user 'root'
  command 'curl -L http://git.io/phpenv-installer \
  | PHPENV_ROOT=/usr/local/phpenv bash'
  not_if 'test -x /usr/local/phpenv/bin/phpenv'
end

remote_file '/usr/local/phpenv/plugins/php-build/share/php-build/definitions/7.0.8'
