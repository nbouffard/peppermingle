class ChangeAddressToLocationInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :address, :location
  end
end
