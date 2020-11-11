# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
  dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese" }
  pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
  pokawa = { name: "pokawa", address: "97 Rue des Entrepreneurs, 75015 Paris, Paris", category: "japanese" }
  la_frite =  { name: "J'ai la frite", address: "34 rue de la frite, bruxelles", category: "belgian" }
  sushi_shop =  { name: "Sushi Shop", address: "42 Rue de Pologne, 78100 Saint-Germain-en-Laye", category: "japanese" }
  [dishoom, pizza_east, pokawa, la_frite, sushi_shop].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
