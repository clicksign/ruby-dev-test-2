class MigrateExistentData < ActiveRecord::Migration[5.2]
  def change
    Album.find_in_batches do |bath|
      bath.each do |album|
        PlayerAlbum.create!(player_id: album.player_id, album_id: album.id)
      end
    end
  end
end
