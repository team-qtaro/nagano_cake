class ChangeColumnDefaultToItems < ActiveRecord::Migration[5.2]
  def change
     change_column_default :items, :is_stopped, from: nil, to: "false"
  end
end
