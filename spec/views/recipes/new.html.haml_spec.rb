require 'spec_helper'

describe "recipes/new" do
  before(:each) do
    assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :tasks => "MyText",
      :user_id => 1,
      :memo => "MyText"
    ).as_new_record)
  end

  it "renders new recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recipes_path, "post" do
      assert_select "input#recipe_name[name=?]", "recipe[name]"
      assert_select "textarea#recipe_tasks[name=?]", "recipe[tasks]"
      assert_select "input#recipe_user_id[name=?]", "recipe[user_id]"
      assert_select "textarea#recipe_memo[name=?]", "recipe[memo]"
    end
  end
end
