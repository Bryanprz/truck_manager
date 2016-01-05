class AddWorksiteToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :worksite, :string
  end
end
