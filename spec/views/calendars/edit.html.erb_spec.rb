require 'spec_helper'

describe "calendars/edit" do
  before(:each) do
    @calendar = assign(:calendar, stub_model(Calendar,
      :label => "MyString",
      :season => "MyString",
      :prayer => "MyString",
      :rank => "MyString",
      :description => "MyString",
      :notes => "MyString"
    ))
  end

  it "renders the edit calendar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => calendars_path(@calendar), :method => "post" do
      assert_select "input#calendar_label", :name => "calendar[label]"
      assert_select "input#calendar_season", :name => "calendar[season]"
      assert_select "input#calendar_prayer", :name => "calendar[prayer]"
      assert_select "input#calendar_rank", :name => "calendar[rank]"
      assert_select "input#calendar_description", :name => "calendar[description]"
      assert_select "input#calendar_notes", :name => "calendar[notes]"
    end
  end
end