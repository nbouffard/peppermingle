class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :amount, :name, presence: true
end
