class CreateSendAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :send_addresses do |t|

      t.timestamps
    end
  end
end
