require 'rails_helper'

RSpec.describe "client_receipts/show", type: :view do
  before(:each) do
    @client_receipt = assign(:client_receipt, ClientReceipt.create!(
      :number => 1,
      :cubic_meters => 2,
      :value_per_cubic_meter => 1.5,
      :order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
