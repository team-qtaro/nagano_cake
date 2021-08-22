class AddCartItemsToCartItems < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_items, :item_id, :integer
    add_column :cart_items, :customer_id, :integer
    add_column :cart_items, :quantity, :integer
  end
end
