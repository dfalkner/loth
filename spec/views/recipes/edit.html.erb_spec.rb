require 'spec_helper'

describe "recipes/edit" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :calendar_id => 1,
      :seq => 1,
      :label => "MyString",
      :filename => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path(@recipe), :method => "post" do
      assert_select "input#recipe_calendar_id", :name => "recipe[calendar_id]"
      assert_select "input#recipe_seq", :name => "recipe[seq]"
      assert_select "input#recipe_label", :name => "recipe[label]"
      assert_select "input#recipe_filename", :name => "recipe[filename]"
      assert_select "input#recipe_content", :name => "recipe[content]"
    end
  end
end
