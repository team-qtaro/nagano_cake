class AddSendAddressToSendAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :send_addresses, :send_address, :string
  end
end
