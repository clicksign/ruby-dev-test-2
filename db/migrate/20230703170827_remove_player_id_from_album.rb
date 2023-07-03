class RemovePlayerIdFromAlbum < ActiveRecord::Migration[7.0]
  def up
    remove_column :albums, :player_id
  end

  def down
    add_column :albums, :player_id
  end
end
