require 'spec_helper'

describe "Cooks" do
  describe "GET /cooks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cooks_path
      response.status.should be(200)
    end
  end
end
