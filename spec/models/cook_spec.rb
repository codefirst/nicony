require 'spec_helper'

describe Cook do
  let(:valid_params) do
    {
      host:   FactoryGirl.create(:host),
      recipe: FactoryGirl.create(:recipe),
      log:   '-'
    }
  end

  describe 'validates' do
    it '(if this test fail, CHECK `valid_params`' do
      Cook.create(valid_params).should be_valid
    end

    describe '.host_id' do
      it 'should not be nil' do
        Cook.create(valid_params.merge(host: nil)).should be_invalid
      end
    end

    describe '.recipe_id' do
      it 'should not be nil' do
        Cook.create(valid_params.merge(recipe: nil)).should be_invalid
      end
    end
  end
end
