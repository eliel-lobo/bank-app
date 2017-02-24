class CreateAccountMovements < ActiveRecord::Migration[5.0]
  def change
    create_table :account_movements do |t|
      t.integer :account_id
      t.integer :value
      t.text :type
      t.text :origin

      t.timestamps
    end
  end
end
