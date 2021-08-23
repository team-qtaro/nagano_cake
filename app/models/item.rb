class Item < ApplicationRecord

  has_many :orders, through: :order_details
  has_many :order_details
  
end
