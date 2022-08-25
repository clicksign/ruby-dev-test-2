class CreateAlbumPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :album_players do |t|
      t.references :album, foreign_key: true
      t.references :player, foreign_key: true
    end

    Album.find_each do |album|
      album.players << Player.find(album.player_id)
      album.update(player_id: nil)
    end
  end
end
