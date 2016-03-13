class AddDumpSiteValueToClientReceipts < ActiveRecord::Migration
  def change
    add_column :client_receipts, :dump_site_value, :float
  end
end
