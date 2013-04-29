require 'spec_helper'

describe "cooks/show" do
  before(:each) do
    @cook = assign(:cook, stub_model(Cook,
      :host => nil,
      :recipe => nil,
      :user => "MyText",
      :success => false,
      :log => "MyText",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
