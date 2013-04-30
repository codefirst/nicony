require 'spec_helper'

describe Host do
  let(:valid_params) do
    { name: 'host', address: 'localhost' }
  end

  describe 'validates' do
    it '(if this test fail, CHECK `valid_params`' do
      Host.create(valid_params).should be_valid
    end

    describe '.name' do
      it 'should not contain blank' do
        Host.create(valid_params.merge(name: '')).should be_invalid
      end

      it 'should not contain nil' do
        Host.create(valid_params.merge(name: nil)).should be_invalid
      end
    end

    describe '.address' do
      it 'should not contain blank' do
        Host.create(valid_params.merge(address: '')).should be_invalid
      end

      it 'should not contain nil' do
        Host.create(valid_params.merge(address: nil)).should be_invalid
      end

      it 'should not contain blank' do
        Host.create(valid_params.merge(address: 'foo bar baz')).should be_invalid
      end

      it 'should allow IP address' do
        Host.create(valid_params.merge(address: '0.0.0.0')).should be_valid
      end

      it 'should allow hostname' do
        Host.create(valid_params.merge(address: 'localhost')).should be_valid
      end

      it 'should allow FQDN' do
        Host.create(valid_params.merge(address: 'codefirst.org')).should be_valid
      end
    end
  end
end
