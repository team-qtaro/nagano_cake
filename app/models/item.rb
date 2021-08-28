class Item < ApplicationRecord



 has_many :cart_items, dependent: :destroy
 belongs_to :genre
 attachment :image



 def add_tax_price
  (self.price * 1.10).round
 end


 validates :name, presence: true
 validates :genre_id, presence: true
has_many :cart_items

  has_many :orders, through: :order_details
  has_many :order_details


end
