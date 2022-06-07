class RemovePlayerIdFromAlbums < ActiveRecord::Migration[7.0]
  def up
    migrate_records_to_player_albums
    remove_column :albums, :player_id
  end

  private

  def migrate_records_to_player_albums
    Album.all.each do |album|
      album.player_albums.create(player_id: album.player_id)
    end
  end
end
