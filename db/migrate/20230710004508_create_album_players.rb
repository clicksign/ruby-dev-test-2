class CreateAlbumPlayers < ActiveRecord::Migration[5.2]
  def up
    create_table :album_players do |t|
      t.references :player, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end

    add_index :album_players, %i[player_id album_id], unique: true

    puts 'Populating album_players...'

    Album.all.each do |album|
      AlbumPlayer.create player_id: album.player_id, album_id: album.id
    end

    puts 'Populating album_players completed!'

    remove_column :albums, :player_id
  end

  def down
    add_reference :albums, :player, foreign_key: true

    Album.reset_column_information
    puts 'Associating the album to its player...'

    AlbumPlayer.all.each do |album_player|
      album_player.album.update_attribute :player_id, album_player.player_id
    end

    puts 'Association completed!'

    drop_table :album_players
  end
end
