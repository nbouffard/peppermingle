class AddColumnsToUsersTable < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :nickname, :string
    add_column :users, :location, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :bio, :text
    add_column :users, :speciality, :string
  end
end
