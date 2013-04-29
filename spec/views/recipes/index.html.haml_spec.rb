require 'spec_helper'

describe "recipes/index" do
  before(:each) do
    assign(:recipes, [
      stub_model(Recipe,
        :name => "Name",
        :tasks => "MyText",
        :user_id => 1,
        :memo => "MyText"
      ),
      stub_model(Recipe,
        :name => "Name",
        :tasks => "MyText",
        :user_id => 1,
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
