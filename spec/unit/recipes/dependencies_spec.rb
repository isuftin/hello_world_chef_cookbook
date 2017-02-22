require 'spec_helper'

describe 'hello_world::dependencies' do
  context 'Installs required dependencies' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'installs httpd dependency' do
      expect(chef_run).to install_package('httpd')
    end

    it 'enable httpd' do
      expect(chef_run).to enable_service('httpd')
    end

    it 'start httpd' do
      expect(chef_run).to start_service('httpd')
    end

  end
end
