package 'memcached' do
  action :install
end

service 'memcached' do
  action [:enable, :start]
end
