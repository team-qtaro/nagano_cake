class Order < ApplicationRecord
     
     belongs_to :costomer
     enum payment_method: {クレジットカード: 0,銀行振込: 1}

     has_many :items, through: :order_details
     has_many :order_details
end
