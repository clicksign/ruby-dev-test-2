# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

album_ride = Album.create(name: 'Ride the lightning')
album_master = Album.create(name: 'Master of puppets')
player = Player.create(name: 'Metallica')

player.albums << album_ride
player.albums << album_master