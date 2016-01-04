class Order < ActiveRecord::Base
  belongs_to :client
  has_one :client_receipt
  has_many :invoices
end
