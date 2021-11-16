class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.integer :admin_id
      t.string :subject
      t.text :content
      t.integer :recipient_id

      t.timestamps
    end
  end
end
