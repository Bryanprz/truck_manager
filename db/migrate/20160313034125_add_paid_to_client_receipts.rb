class AddPaidToClientReceipts < ActiveRecord::Migration
  def change
    add_column :client_receipts, :paid, :boolean
  end
end
