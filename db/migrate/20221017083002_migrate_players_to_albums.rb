class MigratePlayersToAlbums < ActiveRecord::Migration[5.2]
  def change
    Album.where.not(player_id: nil).find_each(batch_size: 100) do |album|
      album.players << Player.find(album.player_id)
    end
  end
end
