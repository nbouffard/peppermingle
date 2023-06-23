class AddColumnsToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :season, :string
    add_column :recipes, :meal_type, :string
    add_column :recipes, :dietary_requirements, :string
  end
end
