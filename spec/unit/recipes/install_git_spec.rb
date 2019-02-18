#
# Cookbook:: django
# Spec:: install_git
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'django::install_git' do
  context 'When all attributes are default, on Ubuntu 14.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '14.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs the necessary packages' do
      expect(chef_run).to install_package('python3-pip')
      expect(chef_run).to install_package('git')
    end

    it 'clones git repo ' do
      expect(chef_run).to run_execute('git clone git://github.com/django/django ~/django-dev')
    end

    it 'installs django framework' do
      #expect(chef_run).to run_execute('pip3 install django')
      expect(chef_run).to run_execute('pip3 install -e ~/django-dev')
    end

  end
end
