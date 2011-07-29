require 'spec_helper'

describe "quick_quotes/index.html.erb" do
  before(:each) do
    assign(:quick_quotes, [
      stub_model(QuickQuote,
        :Title => "",
        :CreatedBy => "Created By",
        :Hours => "",
        :Cost => "",
        :Client => "Client",
        :Requirements => "MyText",
        :Status => "Status"
      ),
      stub_model(QuickQuote,
        :Title => "",
        :CreatedBy => "Created By",
        :Hours => "",
        :Cost => "",
        :Client => "Client",
        :Requirements => "MyText",
        :Status => "Status"
      )
    ])
  end

  it "renders a list of quick_quotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Created By".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
