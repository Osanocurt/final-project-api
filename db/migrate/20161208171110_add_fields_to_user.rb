class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :address, :string
    add_column :users, :user_type, :string
    add_column :users, :photo, :string
  end
end
