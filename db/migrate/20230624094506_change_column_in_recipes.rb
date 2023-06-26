class ChangeColumnInRecipes < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipes, :dietery_requirements, :dietary_requirements
  end
end
