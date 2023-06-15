namespace :db do
  desc 'Creates data pre moving migration'
  task simulate_data: :environment do
    player_1 = Player.create!(name: "Player 1")
    player_2 = Player.create!(name: "Player 2")

    album_1 = Album.create!(name: "Album 1-1")
    album_1.update_column(:player_id, player_1.id)
    album_2 = Album.create!(name: "Album 2-1")
    album_2.update_column(:player_id, player_1.id)
    album_3 = Album.create!(name: "Album 3-1")
    album_3.update_column(:player_id, player_1.id)

    album_4 = Album.create!(name: "Album 1-2")
    album_4.update_column(:player_id, player_2.id)
    album_5 = Album.create!(name: "Album 2-2")
    album_5.update_column(:player_id, player_2.id)
  end

  desc 'Migrate album and player to many_to_many'
  task migrate_album_player: :environment do
    sql = <<-SQL
      INSERT INTO albums_players (album_id, player_id)
        SELECT id, player_id
        FROM albums
    SQL

    ActiveRecord::Base.connection.execute(sql)
  end
end
