#
# Cookbook:: django
# Spec:: install_virtualenv
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'django::install_virtualenv' do
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

    it 'installs necessary packages' do
      expect(chef_run).to install_package('python3-pip')
    end

    it 'installs virtualenv' do
      expect(chef_run).to run_execute('pip3 install virtualenv')
    end
  end
end
