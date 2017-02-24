class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.text :number
      t.integer :balance

      t.timestamps
    end
    add_index :accounts, :number, unique: true
  end
end
