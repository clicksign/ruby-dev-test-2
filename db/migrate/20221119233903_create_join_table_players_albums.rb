class CreateJoinTablePlayersAlbums < ActiveRecord::Migration[5.2]
  def change
    create_join_table :players, :albums, table_name: :player_albums do |t|
      t.index [:player_id, :album_id]
      t.index [:album_id, :player_id]
    end

    Album.select(:id, :player_id).find_each do |album|
      PlayerAlbum.create(album_id: album.id, player_id: album.player_id)
    end
  end
end
