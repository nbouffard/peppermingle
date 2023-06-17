class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.text :ingredients
      t.string :category
      t.string :cuisine
      t.integer :prep_time
      t.integer :total_time
      t.string :dificulty
      t.integer :servings

      t.timestamps
    end
  end
end
