require 'spec_helper'

describe "hosts/edit" do
  before(:each) do
    @host = assign(:host, stub_model(Host,
      :name => "MyString",
      :ip => "MyString",
      :user_name => "MyString",
      :password => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit host form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", host_path(@host), "post" do
      assert_select "input#host_name[name=?]", "host[name]"
      assert_select "input#host_ip[name=?]", "host[ip]"
      assert_select "input#host_user_name[name=?]", "host[user_name]"
      assert_select "input#host_password[name=?]", "host[password]"
      assert_select "textarea#host_description[name=?]", "host[description]"
    end
  end
end
