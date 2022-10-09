class PopulatePlayersAlbums < ActiveRecord::Migration[5.2]
  def up
    Album.select(:id, :player_id).find_in_batches do |batch|
      albums_players = batch.map do |album|
        AlbumsPlayer.new({
                           album_id: album.id,
                           player_id: album.player_id
                         })
      end

      AlbumsPlayer.import!(albums_players)
    end
  end

  def down
    AlbumsPlayer.select(:id, :album_id, :player_id).find_in_batches do |batch|
      albums_hash = batch.map do |item|
        {
          id: item.album_id,
          player_id: item.player_id
        }
      end

      albums = Album.where(id: albums_hash.pluck(:album_id))

      albums_updated = albums.map do |album|
        album_hash = albums_hash.select { |a| a.album_id == album.id }
        album.player_id = album_hash[:player_id]
        album
      end

      Album.import!(albums_updated, on_duplicate_key_update: [:id])
    end
  end
end
