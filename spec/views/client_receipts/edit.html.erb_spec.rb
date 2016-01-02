require 'rails_helper'

RSpec.describe "client_receipts/edit", type: :view do
  before(:each) do
    @client_receipt = assign(:client_receipt, ClientReceipt.create!(
      :number => 1,
      :cubic_meters => 1,
      :value_per_cubic_meter => 1.5,
      :order => nil
    ))
  end

  it "renders the edit client_receipt form" do
    render

    assert_select "form[action=?][method=?]", client_receipt_path(@client_receipt), "post" do

      assert_select "input#client_receipt_number[name=?]", "client_receipt[number]"

      assert_select "input#client_receipt_cubic_meters[name=?]", "client_receipt[cubic_meters]"

      assert_select "input#client_receipt_value_per_cubic_meter[name=?]", "client_receipt[value_per_cubic_meter]"

      assert_select "input#client_receipt_order_id[name=?]", "client_receipt[order_id]"
    end
  end
end
