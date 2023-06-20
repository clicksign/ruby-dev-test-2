class MigrateOldData < ActiveRecord::Migration[5.2]
  def up
    Album.find_each do |album|
      player = Player.find(album.player_id)
      PlayerAlbum.create(player: player, album: album)
    end
  end

  def down
    PlayerAlbum.destroy_all
  end
end
