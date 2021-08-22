class Order < ApplicationRecord
     belongs_to :costomer
    enum payment_method: {クレジットカード: 0,銀行振込: 1}
end
