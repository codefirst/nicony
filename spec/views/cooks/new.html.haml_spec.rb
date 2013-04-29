require 'spec_helper'

describe "cooks/new" do
  before(:each) do
    assign(:cook, stub_model(Cook,
      :host => nil,
      :recipe => nil,
      :user => "MyText",
      :success => false,
      :log => "MyText",
      :memo => "MyText"
    ).as_new_record)
  end

  it "renders new cook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cooks_path, "post" do
      assert_select "input#cook_host[name=?]", "cook[host]"
      assert_select "input#cook_recipe[name=?]", "cook[recipe]"
      assert_select "textarea#cook_user[name=?]", "cook[user]"
      assert_select "input#cook_success[name=?]", "cook[success]"
      assert_select "textarea#cook_log[name=?]", "cook[log]"
      assert_select "textarea#cook_memo[name=?]", "cook[memo]"
    end
  end
end
