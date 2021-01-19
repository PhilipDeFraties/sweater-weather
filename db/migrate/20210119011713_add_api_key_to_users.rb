class AddApiKeyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :api_key, :string
    add_index :users, :email, unique: true
  end
end
