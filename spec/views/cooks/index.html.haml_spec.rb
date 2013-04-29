require 'spec_helper'

describe "cooks/index" do
  before(:each) do
    assign(:cooks, [
      stub_model(Cook,
        :host => nil,
        :recipe => nil,
        :user => "MyText",
        :success => false,
        :log => "MyText",
        :memo => "MyText"
      ),
      stub_model(Cook,
        :host => nil,
        :recipe => nil,
        :user => "MyText",
        :success => false,
        :log => "MyText",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of cooks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
