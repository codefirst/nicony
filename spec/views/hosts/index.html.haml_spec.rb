require 'spec_helper'

describe "hosts/index" do
  before(:each) do
    assign(:hosts, [
      stub_model(Host,
        :name => "Name",
        :address => "Address",
        :user_name => "User Name",
        :password => "Password",
        :description => "MyText"
      ),
      stub_model(Host,
        :name => "Name",
        :address => "Address",
        :user_name => "User Name",
        :password => "Password",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of hosts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
