player1 = Player.create(name: 'Shakira')
player2 = Player.create(name: 'Madonna')
player3 = Player.create(name: 'Lady Gaga')

album1 = Album.create(name: 'Magia')
album2 = Album.create(name: 'Peligro')
album3 = Album.create(name: 'El Dorado')
album4 = Album.create(name: 'Like a Virgin')
album5 = Album.create(name: 'Ray of Light')
album6 = Album.create(name: 'Madame X')
album7 = Album.create(name: 'The Fame')
album8 = Album.create(name: 'A Star Is Born')
album9 = Album.create(name: 'Together Duo')
album10 = Album.create(name: 'Everyone Together')


player1.albums << [album1, album2, album3, album9, album10]
player2.albums << [album4, album5, album6, album9, album10]
player3.albums << [album7, album8, album10]


