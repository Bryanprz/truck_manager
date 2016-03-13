class Order < ActiveRecord::Base
  belongs_to :client
  has_one :client_receipt
  has_many :invoices

  def week
    order_date.strftime('%W')
  end
end
