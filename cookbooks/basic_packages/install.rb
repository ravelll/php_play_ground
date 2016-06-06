%w{
  git
  autoconf
  automake
  bison
  re2c
  libcurl-devel
  libxml2-devel
  libjpeg-turbo-devel
  libmcrypt-devel
  libpng-devel
  libtidy-devel
  libxslt-devel
  openssl-devel
  php-mysqlnd
  readline-devel
}.each do |pkg|
  package pkg do
    action :install
  end
end
