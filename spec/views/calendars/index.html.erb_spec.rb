require 'spec_helper'

describe "calendars/index" do
  before(:each) do
    assign(:calendars, [
      stub_model(Calendar,
        :label => "Label",
        :season => "Season",
        :prayer => "Prayer",
        :rank => "Rank",
        :description => "Description",
        :notes => "Notes"
      ),
      stub_model(Calendar,
        :label => "Label",
        :season => "Season",
        :prayer => "Prayer",
        :rank => "Rank",
        :description => "Description",
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of calendars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Season".to_s, :count => 2
    assert_select "tr>td", :text => "Prayer".to_s, :count => 2
    assert_select "tr>td", :text => "Rank".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
