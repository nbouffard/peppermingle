class RenameDieteryRequirementsToDietaryRequirements < ActiveRecord::Migration[6.0]
  def change
    rename_column :recipes, :dietery_requirements, :dietary_requirements
  end
end
