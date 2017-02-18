class AlterUsers < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :email, unique: true
    add_column :users, :hashed_password, :string, null: false, :after => :email
  end
end
