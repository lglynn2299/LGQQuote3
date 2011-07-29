require 'spec_helper'

describe "quick_quotes/show.html.erb" do
  before(:each) do
    @quick_quote = assign(:quick_quote, stub_model(QuickQuote,
      :Title => "",
      :CreatedBy => "Created By",
      :Hours => "",
      :Cost => "",
      :Client => "Client",
      :Requirements => "MyText",
      :Status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Created By/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Client/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
  end
end
