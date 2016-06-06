require 'spec_helper'

describe command('php -v') do
  its(:stdout) { should match /PHP 7.0.7/ }
end
