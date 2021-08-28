class Order < ApplicationRecord
     belongs_to :customer

     enum status: {入金待ち: 0, 入金確認: 1,製作中: 2, 発送準備中:3, 発送済み:4}
     enum payment_method: {クレジットカード: 0,銀行振込: 1}

     validates :shipping_address ,presence: true
     validates :shipping_name,presence: true
     validates :shipping_postal_code,presence: true, length: { minimum: 7,maximum: 7},numericality: {only_integer: true}
     has_many :items, through: :order_details
     has_many :order_details
end
