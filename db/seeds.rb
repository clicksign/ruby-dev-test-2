# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

album_1 = Album.create(name: 'Eu Tenho a Senha')
album_2 = Album.create(name: 'O Original')
album_3 = Album.create(name: 'Chaaama')
album_4 = Album.create(name: '(Pronounced \'Leh-\'Nérd \'Skin-\'Nérd)')

player_1 = Player.create(name: 'João Gomes')
player_2 = Player.create(name: 'Zé Vaqueiro')
player_3 = Player.create(name: 'Zé Neto & Cristiano')
player_4 = Player.create(name: 'Lynyrd Skynyrd')
player_5 = Player.create(name: 'Tarcísio do Acordeon')
player_6 = Player.create(name: 'Zé Felipe')
player_7 = Player.create(name: 'Henrique & Juliano')

AlbumPlayer.create(album_id: album_1.id, player_id: player_1.id)
AlbumPlayer.create(album_id: album_2.id, player_id: player_2.id)
AlbumPlayer.create(album_id: album_3.id, player_id: player_3.id)
AlbumPlayer.create(album_id: album_4.id, player_id: player_4.id)
AlbumPlayer.create(album_id: album_1.id, player_id: player_5.id)
AlbumPlayer.create(album_id: album_2.id, player_id: player_6.id)
AlbumPlayer.create(album_id: album_3.id, player_id: player_7.id)
