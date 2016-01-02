json.array!(@client_receipts) do |client_receipt|
  json.extract! client_receipt, :id, :number, :cubic_meters, :value_per_cubic_meter, :date_worked, :order_id
  json.url client_receipt_url(client_receipt, format: :json)
end
