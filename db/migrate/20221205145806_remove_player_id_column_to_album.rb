class RemovePlayerIdColumnToAlbum < ActiveRecord::Migration[5.2]
  empty_column = Album.where(player_id: !nil)
  if empty_column.blank?
    def change
      remove_column :albums, :player_id
    end
  end
end
