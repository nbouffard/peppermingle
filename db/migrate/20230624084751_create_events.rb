class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.date :date
      t.boolean :paid

      t.timestamps
    end
  end
end
