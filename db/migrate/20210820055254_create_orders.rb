class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.text :shipping_address
      t.string :shipping_postal_code
      t.string :shipping_name
      t.integer :shipping_fee
      t.integer :total_payment
      t.integer :payment_method
      t.integer :status
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
