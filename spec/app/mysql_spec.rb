require 'spec_helper'

describe service('mysqld') do
  it { should be_enabled }
  it { should be_running }
end

describe port(3306) do
  it { should be_listening }
end
