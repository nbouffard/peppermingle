class Recipe < ApplicationRecord
  belongs_to :user

  validates :title, :description, :ingredients, :category, :cuisine, :difficulty, presence: true
  validates :prep_time, :total_time, :servings, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
