# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

20.times do
  event = Event.new(
    title: Faker::Lorem.words(number: 3).join(' '),
    description: Faker::Lorem.paragraph,
    date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 30.days),
    paid?: [true, false].sample
  )
  event.user = User.all.sample
  event.save!
end
