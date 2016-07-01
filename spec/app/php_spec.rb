require 'spec_helper'

describe file('/usr/local/phpenv/versions/7.0.8/bin/php') do
  it { should be_file }
end
