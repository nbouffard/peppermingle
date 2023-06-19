class AddColumnToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :directions, :text
  end
end
