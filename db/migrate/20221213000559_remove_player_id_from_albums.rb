class RemovePlayerIdFromAlbums < ActiveRecord::Migration[5.2]
  def up
    relocate_partner_artists_up
    remove_column :albums, :player_id
  end

  def relocate_partner_artists_up
    Album.find_each do |album|
      album.partner_artists.create(player: album.player)
    end
  end
end
