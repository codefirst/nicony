require 'spec_helper'

describe Recipe do
  let(:valid_params) do
    { name: 'host', tasks: '-' }
  end

  describe 'validates' do
    it '(if this test fail, CHECK `valid_params`' do
      Recipe.create(valid_params).should_not be_invalid
    end

    describe '.name' do
      it 'should not contain blank' do
        Recipe.create(valid_params.merge(name: '')).should be_invalid
      end

      it 'should not contain nil' do
        Recipe.create(valid_params.merge(name: nil)).should be_invalid
      end
    end

    describe '.tasks' do
      it 'should not contain blank' do
        Recipe.create(valid_params.merge(tasks: '')).should be_invalid
      end

      it 'should not contain nil' do
        Recipe.create(valid_params.merge(tasks: nil)).should be_invalid
      end
    end
  end
end
