class RenameDificultyToDifficultyInRecipes < ActiveRecord::Migration[6.1]
  def change
    rename_column :recipes, :dificulty, :difficulty
  end
end
