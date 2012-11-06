require 'spec_helper'

describe "recipes/index" do
  before(:each) do
    assign(:recipes, [
      stub_model(Recipe,
        :calendar_id => 1,
        :seq => 2,
        :label => "Label",
        :filename => "Filename",
        :content => "Content"
      ),
      stub_model(Recipe,
        :calendar_id => 1,
        :seq => 2,
        :label => "Label",
        :filename => "Filename",
        :content => "Content"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Filename".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
