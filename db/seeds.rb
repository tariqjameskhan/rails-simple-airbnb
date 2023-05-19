# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'creating 5 flats'

5.times do
  flat = Flat.create(
    name: Faker::Address.city,
    address: Faker::Address.street_address,
    description: Faker::ChuckNorris.fact,
    number_of_guests: rand(1..6),
    price_per_night: Faker::Number.decimal(l_digits: 2)
  )

  puts "Flat with the ID: #{flat.id} has been created"
end

puts 'Finished writing'
