require 'spec_helper'

describe "clients/index.html.erb" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :ClientName => "Client Name",
        :HourlyCost => 1.5,
        :SLA => "Sla"
      ),
      stub_model(Client,
        :ClientName => "Client Name",
        :HourlyCost => 1.5,
        :SLA => "Sla"
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Client Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sla".to_s, :count => 2
  end
end
