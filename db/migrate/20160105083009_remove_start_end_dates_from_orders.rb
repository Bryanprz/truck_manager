class RemoveStartEndDatesFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :start_date, :date
    remove_column :orders, :end_date, :date
  end
end
