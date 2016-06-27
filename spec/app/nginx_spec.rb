require 'spec_helper'

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe 'files' do
  %w(
    /etc/nginx/nginx.conf
    /etc/nginx/conf.d/php_fpm.conf
  ).each do |path|
    describe file(path) do
      it { should be_file }
    end
  end
end

