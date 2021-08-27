class Item < ApplicationRecord
<<<<<<< HEAD

=======
    has_many :cart_items
 
>>>>>>> b3b1e50286a792ecef638f78a67d5177eb93ed67
 attachment :image

 belongs_to :genre

 def add_tax_price
  (self.price * 1.10).round
 end


 validates :name, presence: true
 validates :genre_id, presence: true


  has_many :orders, through: :order_details
  has_many :order_details


end
