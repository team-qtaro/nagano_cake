class Genre < ApplicationRecord
    validates :genre_name ,presence: true
  
  has_many :items, dependent: :destroy
  
  accepts_attachments_for :image, attachment: :image
  
  validates :genre_name, presence: true
  
end
