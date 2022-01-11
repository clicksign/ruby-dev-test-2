class RemovePlayerReferencesFromAlbum < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :player_id

    remove_foreign_key :albums, :player_id
  end
end
