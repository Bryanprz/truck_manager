class Client < ActiveRecord::Base
  has_many :orders
  has_many :invoices, through: :orders
end
