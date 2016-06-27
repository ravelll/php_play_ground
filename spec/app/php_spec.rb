require 'spec_helper'

describe file('/usr/local/phpenv/versions/7.0.7/bin/php') do
  it { should be_file }
end

describe service('php-fpm') do
  it { should be_enabled }
  it { should be_running }
end
