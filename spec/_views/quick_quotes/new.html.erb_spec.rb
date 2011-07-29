require 'spec_helper'

describe "quick_quotes/new.html.erb" do
  before(:each) do
    assign(:quick_quote, stub_model(QuickQuote,
      :Title => "",
      :CreatedBy => "MyString",
      :Hours => "",
      :Cost => "",
      :Client => "MyString",
      :Requirements => "MyText",
      :Status => "MyString"
    ).as_new_record)
  end

  it "renders new quick_quote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quick_quotes_path, :method => "post" do
      assert_select "input#quick_quote_Title", :name => "quick_quote[Title]"
      assert_select "input#quick_quote_CreatedBy", :name => "quick_quote[CreatedBy]"
      assert_select "input#quick_quote_Hours", :name => "quick_quote[Hours]"
      assert_select "input#quick_quote_Cost", :name => "quick_quote[Cost]"
      assert_select "input#quick_quote_Client", :name => "quick_quote[Client]"
      assert_select "textarea#quick_quote_Requirements", :name => "quick_quote[Requirements]"
      assert_select "input#quick_quote_Status", :name => "quick_quote[Status]"
    end
  end
end
