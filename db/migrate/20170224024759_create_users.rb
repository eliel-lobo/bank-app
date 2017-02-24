class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name
      t.integer :document_number
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :document_number, unique: true
    add_index :users, :email, unique: true
  end
end
