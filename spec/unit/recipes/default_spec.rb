#
# Cookbook:: python_project
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python_project::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'runs apt get update' do
      expect(chef_run).to update_apt_update 'update_sources'
    end

    it 'should install python3.7' do
      expect(chef_run).to install_package 'python3.7'
    end

    it 'should install python3-pip' do
      expect(chef_run).to install_package 'python3-pip'
    end

    it 'should create a remote directory called app in /home/ubuntu' do
      expect(chef_run).to create_remote_directory('/home/ubuntu/app')
    end

    it 'should create a requirements.txt template in /home/ubuntu/app' do
      expect(chef_run).to create_template('/home/ubuntu/app/requirements.txt')
    end

    it 'should create a directory called Downloads in /home/vagrant' do
      expect(chef_run).to create_directory('/home/vagrant/Downloads')
    end

  end
end
