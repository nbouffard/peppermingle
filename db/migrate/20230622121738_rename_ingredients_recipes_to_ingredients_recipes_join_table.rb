class RenameIngredientsRecipesToIngredientsRecipesJoinTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :ingredients_recipes, :ingredients_recipes_join_table
  end
end
