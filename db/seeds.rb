# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

madonna = Player.create(name: "Madonna")
Album.create(name: "Like a Virgin", player: madonna)

shakira = Player.create(name: "Shakira")
Album.create(name: "Laundry Service", player: shakira)
