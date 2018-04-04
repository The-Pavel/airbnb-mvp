# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.delete_all

10.times do Flat.create(name: "Flat in #{Faker::Address.community}", address: Faker::Address.street_address, description: Faker::Hipster.sentences(1), price_per_night: (1..100).to_a.sample, number_of_guests: (1..10).to_a.sample, image: "https://picsum.photos/400/300/")
  puts "created flat"
end
