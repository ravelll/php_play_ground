execute 'git clone phpenv-installer' do
  user 'root'
  command 'curl -L http://git.io/phpenv-installer \
  | PHPENV_ROOT=/usr/local/phpenv bash'
  not_if 'test -x /usr/local/phpenv/bin/phpenv'
end

# execute 'add phpenv bin to PATH' do
#   user 'root'
#   command 'PATH=$PATH:/usr/local/bin/phpenv/bin/phpenv'
# end
