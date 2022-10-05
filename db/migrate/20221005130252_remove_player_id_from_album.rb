class RemovePlayerIdFromAlbum < ActiveRecord::Migration[5.2]
  def up
    remove_column :albums, :player_id
  end

  def down
    add_column :albums, :player_id, :integer
  end
end
