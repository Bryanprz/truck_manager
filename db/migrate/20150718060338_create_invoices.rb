class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :order, index: true
      t.float :amount
      t.date :date_worked
      t.date :due_date
      t.text :notes

      t.timestamps null: false
    end
  end
end
