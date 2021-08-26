class Genre < ApplicationRecord
  
  has_many :items, dependent: :destroy
  
  accepts_attachments_for :image, attachment: :image
  
  validates :genre_name, presence: true
  
end
