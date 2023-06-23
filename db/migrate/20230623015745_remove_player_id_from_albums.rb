class RemovePlayerIdFromAlbums < ActiveRecord::Migration[5.2]
  def change
    Album.find_each do |album|
      album.partner_artists.create(player: album.player)
    end

    remove_column :albums, :player_id
  end
end
