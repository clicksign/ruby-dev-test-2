class CreateAlbumsPlayers < ActiveRecord::Migration[5.2]
  def up
    create_table :albums_players, id: false do |t|
      t.references :album, foreign_key: true
      t.references :player, foreign_key: true
    end

    Album.all.each do |album|
      AlbumsPlayer.create(album_id: album.id, player_id: album.player_id)
    end
  end

  def down
    # Using a model after changing its table
    # https://api.rubyonrails.org/classes/ActiveRecord/Migration.html#class-ActiveRecord::Migration-label-Using+a+model+after+changing+its+table
    Album.reset_column_information

    AlbumsPlayer.all.each do |album_player|
      Album.find(album_player.album_id).update_attribute(:player_id, album_player.player_id)
    end

    drop_table :albums_players
  end
end

class AlbumsPlayer < ActiveRecord::Base 
end
