class AddDumpSiteToClientReceipts < ActiveRecord::Migration
  def change
    add_column :client_receipts, :dump_site, :string
  end
end
