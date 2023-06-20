class Recipe < ApplicationRecord
  belongs_to :user
  has_many :events

  validates :title, :description, presence: true
end
