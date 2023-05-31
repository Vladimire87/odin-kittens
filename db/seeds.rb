# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# id: 17,
#   name: "Mr. Wrincles",
#   age: 5,
#   cuteness: 10,
#   softness: 10,
#   created_at: Tue, 30 May 2023 20:00:57.548891000 UTC +00:00,
#   updated_at: Tue, 30 May 2023 20:00:57.548891000 UTC +00:00>]

name = [
  'Whisker McFluffy',
  'Sir Pounce-a-Lot',
  'Meowington',
  'Captain Whiskerbeard',
  'Mr. Fuzzypants',
  'Sir Fluffington',
  'Baron Von Meowmeow',
  'Professor Purrnstein',
  'Princess Whiskerkins',
  'Sir Snugglesworth',
  'Lady Fluffernutter',
  'Count Scratches-a-Lot',
  'Sir Whiskers McScratchington',
  'Duchess Fuzzypaws',
  'Lord Snugglebottom'
]

age = rand(1..15)

cuteness = rand(1..10)
softness = rand(1..10)

15.times do
  Kitten.create(name: name.sample, age:, cuteness:, softness:)
end
