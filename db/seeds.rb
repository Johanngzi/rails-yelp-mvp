# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, China E2 7JE", phone_number: "0704986888", category: "chinese" }
pizza_east = { name: "Pizza East", address: "56A Shore Low St, London E1 6PQ", phone_number: "0706376888",  category: "italian"}
ramen = { name: "Ramen", address: "10 Bound St, Japan E2 7JE", phone_number: "0704276890",  category: "japanese" }
french_fries = { name: "French_fries", address: "56A Shoreditch High St, France E1 6PQ", phone_number: "0707276888",  category: "french" }
basaal = { name: "Basaal", address: "7 Bound St, Belgium E2 7JE", phone_number: "0704276888", category: "belgian" }


[dishoom, pizza_east, ramen, french_fries, basaal].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
