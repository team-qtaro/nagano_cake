class AddSendnameToSendAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :send_addresses, :send_name, :string
    add_column :send_addresses, :send_postal_code, :string
  end
end
