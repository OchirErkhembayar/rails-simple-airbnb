# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'creating 4 flats'

4.times do
  puts 'creating 1 flat'
  Flat.create!(
    name: Faker::Address.street_name,
    address: Faker::JapaneseMedia::Naruto.village,
    description: Faker::Address.street_address,
    price_per_night: rand(20..150),
    number_of_guests: rand(1..5)
  )
  puts 'created 1 flat'
end

puts '4 flats created'
