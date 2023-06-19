class Event < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  validates :title, :description, :date, presence: true
end
