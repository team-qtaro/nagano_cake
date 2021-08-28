class Order < ApplicationRecord
     belongs_to :customer

     enum payment_method: {クレジットカード: 0,銀行振込: 1}
     validates :shipping_address ,presence: true
     validates :shipping_name,presence: true
     validates :shipping_postal_code,presence: true, length: { minimum: 7,maximum: 7},numericality: {only_integer: true}
     has_many :items, through: :order_detailss
     has_many :order_details
end
