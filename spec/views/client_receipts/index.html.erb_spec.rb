require 'rails_helper'

RSpec.describe "client_receipts/index", type: :view do
  before(:each) do
    assign(:client_receipts, [
      ClientReceipt.create!(
        :number => 1,
        :cubic_meters => 2,
        :value_per_cubic_meter => 1.5,
        :order => nil
      ),
      ClientReceipt.create!(
        :number => 1,
        :cubic_meters => 2,
        :value_per_cubic_meter => 1.5,
        :order => nil
      )
    ])
  end

  it "renders a list of client_receipts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
