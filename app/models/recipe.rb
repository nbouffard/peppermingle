class Recipe < ApplicationRecord
  belongs_to :user
  has_many :events

  SEASONS = ["Autumn", "Summer", "Winter", "Spring", "Christmas"]
  MEAL_TYPES = ["Breakfast", "Dessert", "Dinner", "Lunch", "Snacks", "Appetizers"]
  DIET = ["Vegan", "Dairy free", "Gluten free", "Nut free", "Vegetarian", "pescatarian"]
  validates :title, :description, :ingredients, :cuisine, :difficulty, :directions, presence: true
  validates :prep_time, :total_time, :servings, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :season, inclusion: { in: SEASONS }
  validates :meal_type, inclusion: { in: MEAL_TYPES }
  validates :dietary_requirements, inclusion: { in: DIET }

  include PgSearch::Model
  Pg_search_scope :filter_recipes,
                  against: %i[meal_type season dietary_requirements],
                  using: {
                    tsearch: { prefix: true }
                  }
end
