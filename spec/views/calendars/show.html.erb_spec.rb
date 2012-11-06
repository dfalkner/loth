require 'spec_helper'

describe "calendars/show" do
  before(:each) do
    @calendar = assign(:calendar, stub_model(Calendar,
      :label => "Label",
      :season => "Season",
      :prayer => "Prayer",
      :rank => "Rank",
      :description => "Description",
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Label/)
    rendered.should match(/Season/)
    rendered.should match(/Prayer/)
    rendered.should match(/Rank/)
    rendered.should match(/Description/)
    rendered.should match(/Notes/)
  end
end
