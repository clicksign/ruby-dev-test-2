# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

players = FactoryBot.create_list(:player, 10)

players.each do |main_player|
  album = FactoryBot.create(:album)
  participant = players.reject { |a| a == main_player }.sample
  album.players << main_player
  album.players << participant
end