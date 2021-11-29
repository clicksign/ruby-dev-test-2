class MigrateAlbumPlayers < ActiveRecord::Migration[5.2]
  def self.up
    Album.transaction do
      Album.all.each do |album|
        player_id = album.player_id
        AlbumPlayer.create!(album_id: album.id, player_id: player_id)
      end
    end
  end

  def self.down
    Album.transaction do
      AlbumPlayer.all.each do |ap|
        Album.find(ap.album_id).update(player_id: ap.player_id)
      end
    end

    AlbumPlayer.destroy_all
  end
end
