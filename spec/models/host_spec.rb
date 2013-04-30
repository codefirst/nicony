require 'spec_helper'

describe Host do
  let(:valid_params) do
    { name: 'host', address: 'localhost' }
  end

  describe 'validates' do
    describe '.name' do
      it 'should not contain blank' do
        Host.create(name: '').should be_validation_error
      end

      it 'should not contain nil' do
        Host.create(name: nil).should be_validation_error
      end
    end

    describe '.address' do
      it 'should not contain blank' do
        Host.create(address: '').should be_validation_error
      end

      it 'should not contain nil' do
        Host.create(address: nil).should be_validation_error
      end

      it 'should not contain blank' do
        Host.create(address: 'foo bar baz').should be_validation_error
      end

      it 'should allow IP address' do
        Host.create(valid_params.merge(address: '0.0.0.0')).should_not be_validation_error
      end

      it 'should allow hostname' do
        Host.create(valid_params.merge(address: 'localhost')).should_not be_validation_error
      end

      it 'should allow FQDN' do
        Host.create(valid_params.merge(address: 'codefirst.org')).should_not be_validation_error
      end
    end
  end
end
