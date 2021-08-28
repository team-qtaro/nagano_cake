class Item < ApplicationRecord

 attachment :image

 belongs_to :genre

 def add_tax_price
  (self.price * 1.10).round
 end


 validates :name, presence: true
 validates :genre_id, presence: true
has_many :cart_items

  has_many :orders, through: :order_details
  has_many :order_details


end
