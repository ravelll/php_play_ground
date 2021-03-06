require 'spec_helper'

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
  libmemcached-devel
  libpng-devel
  libtidy-devel
  libxslt-devel
  openssl-devel
  php-mbstring
  php-mysqlnd
  readline-devel
  vim-enhanced
}.each do |pkg|

  describe package pkg do
    it { should be_installed }
  end
end
