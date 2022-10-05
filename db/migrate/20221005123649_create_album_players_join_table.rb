class CreateAlbumPlayersJoinTable < ActiveRecord::Migration[5.2]
  def up
    create_join_table :albums, :players do |t|
      t.index :album_id
      t.index :player_id
    end

    Album.reset_column_information
    Album.find_each do |album|
      album.update!(players: [album.player]) if album.player
    end
  end

  def down
    drop_join_table :albums, :players
  end
end
