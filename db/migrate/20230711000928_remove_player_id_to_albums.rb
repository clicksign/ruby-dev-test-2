class RemovePlayerIdToAlbums < ActiveRecord::Migration[7.0]
  def up
    remove_index :albums, :player_id
    remove_column :albums, :player_id
  end

  def down
    add_column :albums, :player_id, :integer
    add_index :albums, :player_id
  end
end
