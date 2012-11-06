require 'spec_helper'

describe "recipes/show" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :calendar_id => 1,
      :seq => 2,
      :label => "Label",
      :filename => "Filename",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Label/)
    rendered.should match(/Filename/)
    rendered.should match(/Content/)
  end
end
