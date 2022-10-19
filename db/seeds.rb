# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
ActiveRecord::Base.transaction do
  1000.times do 
    player = Player.create! name: Faker::Artist.name
    10.times do
      Album.create! player: player, name: Faker::Music.album
    end
  end
end
