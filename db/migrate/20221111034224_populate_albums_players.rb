class PopulateAlbumsPlayers < ActiveRecord::Migration[5.2]
  def up
    Album.find_in_batches do |albums|
      albums.map do |album|
        AlbumsPlayer.new(album_id: album.id, player_id: album.player_id).save
      end
    end
  end
end
