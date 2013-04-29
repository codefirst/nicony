require 'spec_helper'

describe "recipes/edit" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :tasks => "MyText",
      :user_id => 1,
      :memo => "MyText"
    ))
  end

  it "renders the edit recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recipe_path(@recipe), "post" do
      assert_select "input#recipe_name[name=?]", "recipe[name]"
      assert_select "textarea#recipe_tasks[name=?]", "recipe[tasks]"
      assert_select "input#recipe_user_id[name=?]", "recipe[user_id]"
      assert_select "textarea#recipe_memo[name=?]", "recipe[memo]"
    end
  end
end
