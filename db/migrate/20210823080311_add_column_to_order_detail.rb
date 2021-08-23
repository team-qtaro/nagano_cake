class AddColumnToOrderDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :order_details, :item_id, :integer
    add_column :order_details, :order_id, :integer
    add_column :order_details, :tax_in_price, :integer
    add_column :order_details, :quantity, :integer
    add_column :order_details, :making_status, :string
  end
end
