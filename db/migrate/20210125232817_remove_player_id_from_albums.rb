class RemovePlayerIdFromAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :albums, :player_id
    remove_index :albums, :player_id
    remove_columns :albums, :player_id
  end
end
