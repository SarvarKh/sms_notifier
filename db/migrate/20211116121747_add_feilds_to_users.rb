class AddFeildsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :position, :string
    add_column :users, :telephone_number, :string
  end
end
