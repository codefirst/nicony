require 'spec_helper'

describe "hosts/show" do
  before(:each) do
    @host = assign(:host, stub_model(Host,
      :name => "Name",
      :ip => "Ip",
      :user_name => "User Name",
      :password => "Password",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Ip/)
    rendered.should match(/User Name/)
    rendered.should match(/Password/)
    rendered.should match(/MyText/)
  end
end
