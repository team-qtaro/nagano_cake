class Customer < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders, dependent: :destroy
  has_many :send_addresses, dependent: :destroy
  has_many :cart_items, dependent: :destroy

end
