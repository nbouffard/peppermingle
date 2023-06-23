class AddColumnsToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipes, :user, foreign_key: true
    add_column :recipes, :title, :string
    add_column :recipes, :description, :text
    add_column :recipes, :meal_type, :string
    add_column :recipes, :season, :string
    add_column :recipes, :cuisine, :string
    add_column :recipes, :prep_time, :float
    add_column :recipes, :total_time, :float
    add_column :recipes, :difficulty, :string
    add_column :recipes, :servings, :integer
    add_column :recipes, :dietery_requirements, :string
    add_column :recipes, :directions, :text
  end
end
