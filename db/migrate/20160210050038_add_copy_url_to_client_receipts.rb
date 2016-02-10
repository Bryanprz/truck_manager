class AddCopyUrlToClientReceipts < ActiveRecord::Migration
  def change
    add_column :client_receipts, :copy_url, :string
  end
end
