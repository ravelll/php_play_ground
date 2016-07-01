execute 'install memcached' do
  command 'git clone https://github.com/php-memcached-dev/php-memcached.git &&\
  cd php-memcached &&\
  git checkout remotes/origin/php7 &&\
  phpize &&\
  ./configure &&\
  make &&\
  sudo make install'
  not_if 'test -f /usr/local/phpenv/versions/7.0.8/lib/php/extensions/no-debug-non-zts-20151012/memcached.so'
end
