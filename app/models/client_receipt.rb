class ClientReceipt < ActiveRecord::Base
  belongs_to :order
end
