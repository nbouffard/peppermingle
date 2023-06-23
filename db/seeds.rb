# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

20.times do
  # event = Event.new(
  #   title: Faker::Lorem.words(number: 3).join(' '),
  #   description: Faker::Lorem.paragraph,
  #   date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 30.days),
  #   paid: false
  # )
  # event.user = User.all.sample
  # event.save!

  Recipe.create!(
    title: Faker::Food.dish,
    description: Faker::Food.description,
    ingredients: Faker::Food.ingredient,
    meal_type: Recipe::MEAL_TYPES.sample,
    cuisine: Faker::Food.ethnic_category,
    dietary_requirements: Recipe::DIET.sample,
    prep_time: rand(5..15),
    total_time: rand(60..120),
    difficulty: ['easy', 'medium', 'hard'].sample,
    servings: 5,
    season: Recipe::SEASONS.sample,
    directions: Faker::Food.description,
    user_id: 1
  )
end
