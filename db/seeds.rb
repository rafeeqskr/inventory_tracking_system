# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


InventoryItem.create([
  { name: "Item 1", quantity: 100, location: "A1" },
  { name: "Item 2", quantity: 50, location: "B1" },
  { name: "Item 3", quantity: 200, location: "C1" },
  { name: "Item 4", quantity: 75, location: "D1" },
  { name: "Item 5", quantity: 30, location: "E1" }
])
