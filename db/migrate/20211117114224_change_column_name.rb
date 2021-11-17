class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :messages, :admin_id, :user_id
  end
end
