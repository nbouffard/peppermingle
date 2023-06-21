class ChangeColumnToRecipes < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :dificulty, :string
    add_column :recipes, :difficulty, :string
  end
end
