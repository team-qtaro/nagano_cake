class SendAddress < ApplicationRecord
 validates :send_address,presence: true
 validates :send_name,presence: true
 validates :send_postal_code,presence: true, length: { minimum: 7,maximum: 7},numericality: {only_integer: true}

end
