class AddNameAndAddressToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :address, :string, null: false
  end
end
