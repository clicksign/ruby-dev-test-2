# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating players in database..."
artist1 = Player.find_or_create_by(name: "Madonna")
artist2 = Player.find_or_create_by(name: "Shakira")


puts "Creating albums in database..."
album1 = Album.find_or_create_by(name: "American Life", player_id: {artists: [artist1]})
album2 = Album.find_or_create_by(name: "She Wolf", player_id: {artists: [artist2]})