#
# Cookbook:: python_project
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package 'python3.7' do
  action :install
end

package 'python3-pip' do
  action :install
end

remote_directory '/home/ubuntu/app' do
  source 'It_Jobs_Watch_Data_Package'
  action :create
  mode '0777'
end

template '/home/ubuntu/app/requirements.txt' do
  source 'requirements.txt.erb'
  mode '0777'
end

#execute 'install requirements' do
#  command 'sudo pip3 install -r /home/ubuntu/app/requirements.txt'
#end

bash 'install_requirements' do
  code <<-EOH
    sudo pip3 install -r /home/ubuntu/app/requirements.txt
  EOH
end

directory '/home/vagrant/Downloads' do
  action :create
  mode '0777'
end

bash 'install_jenkins' do
  code <<-EOH
  echo "Adding apt-keys"
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb http://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list

echo "Updating apt-get"
sudo apt-get -qq update

echo "Installing default-java"
sudo apt-get -y install default-jre > /dev/null 2>&1
sudo apt-get -y install default-jdk > /dev/null 2>&1

echo "Installing git"
sudo apt-get -y install git > /dev/null 2>&1

echo "Installing git-ftp"
sudo apt-get -y install git-ftp > /dev/null 2>&1

echo "Installing jenkins"
sudo apt-get -y install jenkins > /dev/null 2>&1
  EOH
end
