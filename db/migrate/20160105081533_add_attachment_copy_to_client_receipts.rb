class AddAttachmentCopyToClientReceipts < ActiveRecord::Migration
  def self.up
    change_table :client_receipts do |t|
      t.attachment :copy
    end
  end

  def self.down
    remove_attachment :client_receipts, :copy
  end
end
