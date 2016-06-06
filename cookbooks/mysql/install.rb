remote_file '/etc/yum.repos.d/mysql-community-source.repo'
remote_file '/etc/yum.repos.d/mysql-community.repo'
remote_file '/etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'

%w{
  mysql
  mysql-devel
  mysql-server
}.each do |pkg|
  package pkg do
    action :install
  end
end

service 'mysql' do
  action [:enable, :start]
end
